import 'package:analyzer/dart/element/element.dart';
import 'package:eval_builder/src/build/tools/dart_type_to_code.dart';
import 'package:eval_builder/src/build/tools/executable_element_to_code.dart';
import 'package:eval_builder/src/build/wrapper.dart';
import 'package:code_builder/code_builder.dart' as code;

import 'well_known_type_references.dart';

class EnumWrapperBuilder extends WrapperBuilder<EnumElement> {
  EnumWrapperBuilder(super.wrapped, super.settings) {
    if (settings.bimodal) {
      throw UnsupportedError("Enum wrappers ca not be bimodal!");
    }

    values = wrapped.fields
        .where((element) => element.isEnumConstant)
        .map((e) => e.name)
        .toList();
  }

  late final List<String> values;

  @override
  Iterable<PropertyAccessorElement> filterAccessors(
      Iterable<PropertyAccessorElement> unfiltered) {
    return unfiltered.where((element) {
      var variable = element.variable2;
      if (variable is FieldElement) {
        return !variable.isEnumConstant;
      } else {
        return true;
      }
    });
  }

  @override
  void addDeclarationField(code.ClassBuilder builder) {
    builder.fields.add(code.Field((b) => b
      ..name = r'$declaration'
      ..static = true
      ..modifier = code.FieldModifier.final$
      ..assignment = WellKnownTypeReferences.bridgeEnumDef.newInstance(
        [
          code.refer(r'$type').property('ref'),
        ],
        {
          'values': code.literalList(values.map(code.literalString)),
          'methods': code.literalMap({
            for (var method in newMethods)
              code.literalString(method.name):
                  method.methodDef(wrapped, settings),
          }),
          'getters': code.literalMap({
            for (var accessor in newAccessors)
              if (accessor.isGetter)
                code.literalString(accessor.name):
                    accessor.methodDef(wrapped, settings),
          }),
          'setters': code.literalMap({
            for (var accessor in newAccessors)
              if (accessor.isSetter)
                code.literalString(
                        accessor.name.substring(0, accessor.name.length - 1)):
                    accessor.methodDef(wrapped, settings),
          }),
        },
      ).code));
  }

  @override
  void addValueField(code.ClassBuilder builder) {
    super.addValueField(builder);

    builder.fields.add(code.Field(
      (b) => b
        ..name = r'$values'
        ..static = true
        ..modifier = code.FieldModifier.final$
        ..assignment = code.literalMap({
          for (var value in values)
            code.literalString(value): selfReference.newInstanceNamed(
                'wrap', [wrapped.thisType.refer().property(value)])
        }).code,
    ));
  }
}
