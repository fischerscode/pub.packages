import 'package:analyzer/dart/element/element.dart';
import 'package:eval_builder/src/build/wrapper.dart';
import 'package:eval_builder_annotations/annotations.dart';
import 'package:code_builder/code_builder.dart' as code;

import 'code_builder_utils.dart';
import 'dart_type_to_code.dart';
import '../well_known_wrappers.dart';
import '../settings.dart';
import '../well_known_type_references.dart';

sealed class WrapperDiscovery {
  const WrapperDiscovery._();

  static WrapperDiscovery? discover(
      TypeParameterizedElement element, KnownWrapperMap knownWrappers) {
    var known = knownWrappers.entries
        .where((k) => k.key.element!.id == element.id)
        .firstOrNull
        ?.value;

    if (known != null) {
      return KnownWrapperDiscovery(spec: known.spec, wrap: known.wrap);
    }

    var wellKnown = WellKnownWrapper.get(element);

    if (wellKnown != null) {
      return WellKnownWrapperDiscovery(wellKnown);
    }

    var annotation = element.metadata
        .where((a) =>
            a.element!.enclosingElement!.name == '$Wrapper' &&
            a.element!.librarySource!.uri.toString() ==
                'package:eval_builder_annotations/annotations.dart')
        .firstOrNull;
    if (annotation != null) {
      return AnnotatedWrapperDiscovery(annotation, element);
    }

    return null;
  }

  code.Expression get spec;

  code.Expression wrap(code.Expression inner);
}

class WellKnownWrapperDiscovery extends WrapperDiscovery {
  final WellKnownWrapper wrapper;
  WellKnownWrapperDiscovery(this.wrapper) : super._();

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

  KnownWrapperDiscovery(
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
    while (parent != null && parent is! LibraryElement) {
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
        case TypeDefiningElement():
          return code.TypeReference((b) => b
            ..symbol = c.name
            ..url = '_library_with_element:${c.id}'
            ..types.addAll([
              //TODO: Generics
            ]));
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

  AnnotatedWrapperDiscovery(this.annotation, this.annotated) : super._();

  @deprecated
  String get name => _name;

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
