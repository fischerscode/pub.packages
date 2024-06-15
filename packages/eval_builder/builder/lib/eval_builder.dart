import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:code_builder/code_builder.dart';
import 'package:eval_builder/src/build/class_wrapper.dart';
import 'package:eval_builder/src/build/enum_wrapper.dart';
import 'package:eval_builder/src/build/settings.dart';
import 'package:eval_builder_annotations/annotations.dart';
import 'package:source_gen/source_gen.dart';

import 'src/build/prefix_resolver.dart';

Builder createBuilder(BuilderOptions options) {
  return SharedPartBuilder([WrapperGenerator()], 'eval_builder');
}

class WrapperGenerator extends GeneratorForAnnotation<Wrapper> {
  @override
  String generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep,
      [Element? wrapped]) {
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

        var settings = WrapperSettings(
            bimodal: annotation.read('bimodal').boolValue,
            defaultParameterStrategy: defaultParameterStrategy,
            knownWrappers: knownWrappers,
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
        return generateForAnnotatedElement(
            element.aliasedType.element!, annotation, buildStep, element);
      default:
        throw UnsupportedError(
            "Annotating $element with @$Wrapper is not supported.");
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
