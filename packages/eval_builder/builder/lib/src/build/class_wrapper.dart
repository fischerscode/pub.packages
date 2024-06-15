import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart' as code;
import 'package:eval_builder/src/build/tools/dart_type_to_code.dart';
import 'package:eval_builder/src/build/wrapper.dart';

import 'tools/code_builder_utils.dart';
import 'tools/executable_element_to_code.dart';
import 'tools/sup_types.dart';
import 'well_known_type_references.dart';

class ClassWrapperBuilder extends WrapperBuilder<ClassElement> {
  ClassWrapperBuilder(super.wrapped, super.settings) {
    constructors = wrapped.constructors.where((e) => !e.isPrivate);
  }

  late final Iterable<ConstructorElement> constructors;

  @override
  void addDeclarationField(code.ClassBuilder builder) {
    builder.fields.add(code.Field((b) => b
      ..name = r'$declaration'
      ..static = true
      ..modifier = code.FieldModifier.final$
      ..assignment = WellKnownTypeReferences.bridgeClassDef.newInstance(
        [
          WellKnownTypeReferences.bridgeClassType.newInstance([
            code.refer(r'$type').property('ref')
          ], {
            r'$extends': extendedWrapper.ref,
            r'$implements':
                code.literalList(interfaceWrappers.map((e) => e.ref).toList()),
            r'$with':
                code.literalList(mixinWrappers.map((e) => e.ref).toList()),
            r'isAbstract': code.literalBool(wrapped.isAbstract),
            // r'generics': //TODO: Generics
          })
        ],
        {
          'constructors': code.literalMap({
            for (var constructor in constructors)
              code.literalString(constructor.name):
                  WellKnownTypeReferences.bridgeConstructorDef.call(
                      [constructor.functionDef(wrapped, settings)],
                      {'isFactory': code.literalBool(constructor.isFactory)}),
          }),
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
          // 'fields': code.literalMap({
          //   for (var field in element.fields)
          //     code.literalString(field.name): _BridgeFieldDef.newInstance(
          //         [field.type.annotated()],
          //         {'isStatic': code.literalBool(field.isStatic)}),
          // }),
          'bridge': code.literalFalse,
          'wrap': code.literalTrue,
        },
      ).code));
  }

  @override
  void addConstructor(code.ClassBuilder builder) {
    super.addConstructor(builder);

    if (wrapped.isConstructable) {
      for (var constructor in constructors) {
        builder.methods.add(code.Method((b) => b
          ..name = constructor.name.isEmpty ? r'$new' : '\$${constructor.name}'
          ..returns = WellKnownTypeReferences.$Value.nullable(true)
          ..static = true
          ..requiredParameters.addAll([
            code.Parameter((b) => b
              ..name = 'runtime'
              ..type = WellKnownTypeReferences.runtime),
            code.Parameter((b) => b
              ..name = 'target'
              ..type = WellKnownTypeReferences.$Value.nullable(true)),
            code.Parameter(
              (b) => b
                ..name = 'args'
                ..type = WellKnownTypeReferences.list
                    .withGeneric(WellKnownTypeReferences.$Value.nullable(true)),
            ),
          ])
          ..body = code.TypeReference((b) => b.symbol = settings.name)
              .newInstanceNamed('wrap', [
                wrapped.thisType.refer().newInstanceMaybeNamed(
                    constructor.name.isEmpty ? null : constructor.name, [
                  for (var (index, parameter) in constructor.parameters.indexed)
                    if (parameter.isPositional)
                      code
                          .refer('args')
                          .index(code.literalNum(index))
                          .maybeNullChecked(!parameter.hasDefaultValue)
                          .access(parameter.type,
                              parameter.defaultValueCode?.asExpression())
                ], {
                  for (var (index, parameter) in constructor.parameters.indexed)
                    if (parameter.isNamed)
                      parameter.name: code
                          .refer('args')
                          .index(code.literalNum(index))
                          .maybeNullChecked(!parameter.hasDefaultValue)
                          .access(parameter.type,
                              parameter.defaultValueCode?.asExpression())
                }, [
                  //TODO: Generics
                ])
              ])
              .returned
              .statement
          ..lambda = false));
      }
    }
  }
}
