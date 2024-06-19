import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:code_builder/code_builder.dart';
import 'package:eval_builder/src/build/class_wrapper.dart';
import 'package:eval_builder/src/build/enum_wrapper.dart';
import 'package:eval_builder/src/build/settings.dart';
import 'package:eval_builder/src/build/tools/discovery.dart';
import 'package:eval_builder_annotations/annotations.dart';
import 'package:source_gen/source_gen.dart';

import 'src/build/prefix_resolver.dart';

Builder createBuilder(BuilderOptions options) {
  return SharedPartBuilder([WrapperGenerator()], 'eval_builder');
}

class WrapperGenerator extends GeneratorForAnnotation<Wrapped> {
  @override
  Future<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep,
      [Element? wrapped]) async {
    // final library = await buildStep.resolver.libraryFor(buildStep.inputId);

    final typeSystem = (wrapped ?? element).library!.typeSystem;

    switch (element) {
      case ClassElement():
      case EnumElement():
        var defaultParameterStrategyField = annotation
            .read('defaultParameterStrategy')
            .peek('name')
            ?.toStringValue();
        var defaultParameterStrategy = defaultParameterStrategyField != null
            ? DefaultParameterStrategy.values.firstWhere(
                (element) => element.name == defaultParameterStrategyField)
            : DefaultParameterStrategy.copyCode;

        // var knownWrappers = <int,
        //     ({({String library, String name}) spec, code.Expression wrap})>{};

        // for (var known in annotation
        //     .read('knownWrapped')
        //     .listValue
        //     .map((e) => e.toTypeValue()!)) {
        //   var element = known.element;
        //   while (element != null) {
        //     if (element is InstanceElement) {
        //       knownWrappers[element.id] = ();
        //     }

        //     if (element is TypeAliasElement) {
        //       element = element.aliasedElement;
        //     } else {
        //       element = null;
        //     }
        //   }
        //   if (known is ParameterizedType) {
        //     var element = known.element;
        //   }
        // }

        var knownWrappers = annotation
            .read('knownWrappers')
            .mapValue
            .map((key, value) => MapEntry(key!, value!))
            .map((key, value) => MapEntry(key.toTypeValue()!, (
                  spec: value.getField('spec')!,
                  wrap: value.getField('wrap')!.toFunctionValue()!
                )))
            .map((key, value) => MapEntry(key, (
                  spec: (
                    library: value.spec.getField('library')!.toStringValue()!,
                    name: value.spec.getField('name')!.toStringValue()!
                  ),
                  wrap: value.wrap,
                )));

        // for (var wrapped in annotation
        //     .read('knownWrapped')
        //     .listValue
        //     .map((e) => e.toTypeValue()!)) {
        //   print(
        //       '$wrapped: ${.where((a) => a.element!.enclosingElement!.name == '$Wrapped' && a.element!.librarySource!.uri.toString() == 'package:eval_builder_annotations/annotations.dart').firstOrNull}');
        // }

        final knownWrapped = Map.fromEntries(annotation
            .read('knownWrapped')
            .listValue
            .map((e) => e.toTypeValue()!)
            .map((e) => MapEntry(
                e,
                ((e.alias?.element ?? e.element))!
                    .metadata
                    .where((a) =>
                        a.element!.enclosingElement!.name == '$Wrapped' &&
                        a.element!.librarySource!.uri.toString() ==
                            'package:eval_builder_annotations/annotations.dart')
                    .firstOrNull))
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)));

        var settings = WrapperSettings(
            bimodal: annotation.read('bimodal').boolValue,
            defaultParameterStrategy: defaultParameterStrategy,
            discoverer: WrapperDiscoverer(
                knownWrappers: knownWrappers,
                typeSystem: typeSystem,
                knownWrapped: knownWrapped),
            libIdentifier: annotation.objectValue
                    .getField('libIdentifier')
                    ?.toStringValue() ??
                'package:myPackage/file.dart',
            name: annotation.objectValue.getField('name')!.toStringValue() ??
                '\$${(wrapped ?? element).name}');

        Class c;

        if (element is ClassElement) {
          c = ClassWrapperBuilder(element, settings).build();
        } else {
          c = EnumWrapperBuilder(element as EnumElement, settings).build();
        }

        return c
            .accept(DartEmitter(
                allocator:
                    PrefixResolver((wrapped ?? element).library!.prefixes),
                useNullSafetySyntax: true))
            .toString();

      case TypeAliasElement():
        return generateForAnnotatedElement(element.aliasedType.element!,
            annotation, buildStep, wrapped ?? element);
      default:
        throw UnsupportedError(
            "Annotating $element with @$Wrapped is not supported.");
    }
  }
}

extension on ConstantReader {
  String? toStringValue() {
    if (isNull) {
      return null;
    } else {
      return stringValue;
    }
  }
}

class Test<A, B> {}

typedef ATest<B> = Test<num, B>;

abstract class Foo {
  Test<int, String> get t;
}

abstract class Bar {
  ATest<String> get t;
}

class Baz implements Foo, Bar {
  @override
  Test<int, String> get t => throw UnimplementedError();
}
