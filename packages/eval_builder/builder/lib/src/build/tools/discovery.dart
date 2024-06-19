import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/type_system.dart';
import 'package:eval_builder/src/build/tools/generics.dart';
import 'package:eval_builder/src/build/wrapper.dart';
import 'package:eval_builder_annotations/annotations.dart';
import 'package:code_builder/code_builder.dart' as code;

import 'code_builder_utils.dart';
import 'dart_type_to_code.dart';
import '../well_known_wrappers.dart';
import '../settings.dart';
import '../well_known_type_references.dart';

class WrapperDiscoverer {
  final KnownWrapperMap knownWrappers;
  final TypeSystem typeSystem;
  final Map<DartType, ElementAnnotation> knownWrapped;

  WrapperDiscoverer(
      {required this.knownWrappers,
      required this.typeSystem,
      required this.knownWrapped});

  WrapperDiscovery? discover(
    ParameterizedType type,
  ) {
    var knownWrapperMatch = _findBestMatch(type, knownWrappers, typeSystem);

    if (knownWrapperMatch != null) {
      return KnownWrapperDiscovery(
          spec: knownWrapperMatch.value.spec,
          wrap: knownWrapperMatch.value.wrap,
          type.typeArguments);
    }

    var knownWrappedMatch = _findBestMatch(type, knownWrapped, typeSystem);

    if (knownWrappedMatch != null) {
      return AnnotatedWrapperDiscovery(
          knownWrappedMatch.value,
          knownWrappedMatch.key.element as TypeParameterizedElement,
          type.typeArguments);
    }

    var wellKnown =
        WellKnownWrapper.get(type.element as TypeParameterizedElement);

    if (wellKnown != null) {
      return WellKnownWrapperDiscovery(wellKnown, type.typeArguments);
    }

    var annotation = type.element!.metadata
        .where((a) =>
            a.element!.enclosingElement!.name == '$Wrapped' &&
            a.element!.librarySource!.uri.toString() ==
                'package:eval_builder_annotations/annotations.dart')
        .firstOrNull;
    if (annotation != null) {
      return AnnotatedWrapperDiscovery(annotation,
          type.element as TypeParameterizedElement, type.typeArguments);
    }

    return null;
  }

  static MapEntry<DartType, K>? _findBestMatch<K>(
      DartType targetType, Map<DartType, K> typeMap, TypeSystem typeSystem) {
    targetType = typeSystem.promoteToNonNull(targetType);
    MapEntry<DartType, K>? bestMatch;
    for (var entry in typeMap.entries) {
      if (typeSystem.isSubtypeOf(targetType, entry.key)) {
        if (bestMatch == null ||
            typeSystem.isSubtypeOf(entry.key, bestMatch.key)) {
          bestMatch = entry;
        }
      }
    }
    return bestMatch;
  }
}

sealed class WrapperDiscovery {
  const WrapperDiscovery._(this.typeArguments);

  code.Expression get spec;

  code.Expression ref(InterfaceElement self, WrapperDiscoverer discoverer) {
    return WellKnownTypeReferences.bridgeTypeRef.newInstance([
      spec,
      code.literalList(typeArguments.map((e) => e.ref(self, discoverer)))
    ]);
  }

  code.Expression wrap(code.Expression inner);

  final List<DartType> typeArguments;
}

class WellKnownWrapperDiscovery extends WrapperDiscovery {
  final WellKnownWrapper wrapper;
  WellKnownWrapperDiscovery(this.wrapper, super.typeParameters) : super._();

  @override
  code.Expression get spec =>
      WellKnownTypeReferences.bridgeTypeSpec.newInstance([
        code.literalString(wrapper.wrappedTypeOwner),
        code.literalString(wrapper.wrappedTypeSymbol)
      ]);

  @override
  code.Expression wrap(code.Expression inner) {
    return wrapper.wrap(inner);
  }
}

class KnownWrapperDiscovery extends WrapperDiscovery {
  final ({String library, String name}) _spec;
  final ExecutableElement _wrap;

  KnownWrapperDiscovery(super.typeParameters,
      {required ({String library, String name}) spec,
      required ExecutableElement wrap})
      : _spec = spec,
        _wrap = wrap,
        super._();

  @override
  code.Expression get spec => WellKnownTypeReferences.bridgeTypeSpec.call(
      [code.literalString(_spec.library), code.literalString(_spec.name)]);

  @override
  code.Expression wrap(code.Expression inner) {
    var path = <Element>[_wrap];
    Element? parent = _wrap.enclosingElement;
    while (parent != null &&
        parent is! LibraryElement &&
        parent is! CompilationUnitElement) {
      path.insert(0, parent);
      parent = parent.enclosingElement;
    }

    return path.fold(''.asExpression(), (p, c) {
      switch (c) {
        case ClassMemberElement(name: var name):
          if (name != null) {
            return p.property(name);
          } else {
            return p;
          }
        case TypeParameterizedElement():
          return code.TypeReference((b) => b
            ..symbol = c.name
            ..url = '_library_with_element:${c.id}'
            ..types.addAll(c.typeParameters.map((e) => e.refer())));
        case TypeParameterElement():
          return c.refer();
        default:
          throw UnsupportedError(
              'Unexpected ${c.runtimeType} in call path of $_wrap');
      }
    }).call([inner]);
  }
}

class AnnotatedWrapperDiscovery extends WrapperDiscovery {
  final ElementAnnotation annotation;
  final TypeParameterizedElement annotated;

  AnnotatedWrapperDiscovery(
      this.annotation, this.annotated, super.typeArguments)
      : super._();

  String get _name => annotation
      .computeConstantValue()!
      .getField('name')!
      .toStringWithDefault('\$${annotated.name}');

  @override
  code.Expression get spec {
    final annotated = this.annotated;
    switch (annotated) {
      case InterfaceElement():
        return ((annotated.thisType.refer() as code.TypeReference).toBuilder()
              ..symbol = _name)
            .build()
            .property(r'$type');
      default:
        throw UnimplementedError(
            "Can not get spec for ${annotated.getDisplayString()}. InterfaceElement can currently be annotated.");
    }
  }

  @override
  code.Expression wrap(code.Expression inner) {
    return _name.asExpression().property('wrap').call([inner]);
  }
}
