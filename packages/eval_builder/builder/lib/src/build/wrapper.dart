import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:code_builder/code_builder.dart' as code;

import 'settings.dart';
import 'tools/code_builder_utils.dart';
import 'tools/dart_type_to_code.dart';
import 'tools/executable_element_to_code.dart';
import 'tools/sup_types.dart';
import 'well_known_type_references.dart';

code.Class buildWrapper(ClassElement element, WrapperSettings settings) {
  final extendedWrapper = element
      .discoverSupWrappers(
          (e) => [e.supertype].nonNulls, settings.knownWrappers)
      .single; // It's safe to use last, since everything extends Object
  final interfaceWrappers =
      element.discoverSupWrappers((e) => e.interfaces, settings.knownWrappers);
  final mixinWrappers =
      element.discoverSupWrappers((e) => e.mixins, settings.knownWrappers);

  var builder = code.ClassBuilder();
  builder
    ..name = settings.name
    ..implements.addAll([
      if (settings.bimodal) element.thisType.refer(),
      WellKnownTypeReferences.$Instance,
    ].nonNulls);

  builder.types.addAll([
    //TODO: Generics
  ]);

  builder.fields.add(code.Field((b) => b
    ..name = r'$type'
    ..static = true
    ..modifier = code.FieldModifier.final$
    ..assignment = WellKnownTypeReferences.bridgeTypeSpec.call([
      code.literalString(settings.libIdentifier),
      code.literalString(element.name)
    ]).code));

  final supTypesTillWrappers = element.discoverSupTillWrapper(
      (e) => [
            e.supertype,
            ...e.interfaces,
            ...e.mixins,
          ].nonNulls,
      settings.knownWrappers);

  var constructors = element.constructors.where((e) => !e.isPrivate);

  List<MethodElement> lookupMethods(
      Iterable<(InterfaceType, MethodElement)> methods) {
    return methods
        .fold(
            Map.fromIterables(element.methods.map((e) => e.name),
                element.methods.map((e) => e)), (methods, method) {
          if ((method.$2.isPublic && !method.$2.isStatic) ||
              method.$1.element.library.id == element.library.id) {
            methods[method.$2.name] ??= method.$2;
          }
          return methods;
        })
        .values
        .where((m) => ![
              // Methods that should be deferred to $Object
              '==', 'noSuchMethod'
            ].contains(m.name))
        .toList();
  }

  List<PropertyAccessorElement> lookupAccessors(
      Iterable<(InterfaceType, PropertyAccessorElement)> accessors) {
    return accessors
        .fold(
            Map.fromIterables(
                element.accessors
                    .where((a) => a.isSetter || a.isGetter)
                    .map((e) => (e.isGetter, e.name)),
                element.accessors.where((a) => a.isSetter || a.isGetter)),
            (accessors, accessor) {
          if ((accessor.$2.isPublic && !accessor.$2.isStatic) ||
              accessor.$1.element.library.id == element.library.id) {
            if (accessor.$2.isGetter || accessor.$2.isSetter) {
              accessors[(accessor.$2.isGetter, accessor.$2.name)] ??=
                  accessor.$2;
            }
          }
          return accessors;
        })
        .values
        .where((a) => ![
              // Accessors that should be deferred to $Object
              'hashCode', 'runtimeType'
            ].contains(a.name))
        .toList();
  }

  // Methods that are not inherited from Wrappers
  var newMethodsWithPrivate = lookupMethods(
      supTypesTillWrappers.expand((s) => s.methods.map((m) => (s, m))));

  var newAccessorsWithPrivate = lookupAccessors(
      supTypesTillWrappers.expand((s) => s.accessors.map((m) => (s, m))));

  var newMethods = newMethodsWithPrivate.where((e) => !e.isPrivate);
  var newAccessors = newAccessorsWithPrivate.where((e) => !e.isPrivate);

  var methodsWithPrivate = lookupMethods(
      element.allSupertypes.expand((s) => s.methods.map((m) => (s, m))));
  var accessorsWithPrivate = lookupAccessors(
      element.allSupertypes.expand((s) => s.accessors.map((a) => (s, a))));

  var methods = methodsWithPrivate.where((e) => !e.isPrivate);

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
          r'$with': code.literalList(mixinWrappers.map((e) => e.ref).toList()),
          r'isAbstract': code.literalBool(element.isAbstract),
          // r'generics': //TODO: Generics
        })
      ],
      {
        'constructors': code.literalMap({
          for (var constructor in constructors)
            code.literalString(constructor.name):
                WellKnownTypeReferences.bridgeConstructorDef.call(
                    [constructor.functionDef(element, settings)],
                    {'isFactory': code.literalBool(constructor.isFactory)}),
        }),
        'methods': code.literalMap({
          for (var method in newMethods)
            code.literalString(method.name):
                method.methodDef(element, settings),
        }),
        'getters': code.literalMap({
          for (var accessor in newAccessors)
            if (accessor.isGetter)
              code.literalString(accessor.name):
                  accessor.methodDef(element, settings),
        }),
        'setters': code.literalMap({
          for (var accessor in newAccessors)
            if (accessor.isSetter)
              code.literalString(
                      accessor.name.substring(0, accessor.name.length - 1)):
                  accessor.methodDef(element, settings),
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

  builder.fields.add(code.Field((b) => b
    ..name = r'$value'
    ..annotations.add(WellKnownTypeReferences.override)
    ..modifier = code.FieldModifier.final$
    ..type = element.thisType.refer()));

  builder.fields.add(code.Field((b) => b
    ..name = r'_$superWrapper'
    ..modifier = code.FieldModifier.final$
    ..late = true
    ..type = WellKnownTypeReferences.$Instance
    ..assignment = extendedWrapper.$2.wrap(_$value).code));

  builder.methods.add(code.Method((b) => b
    ..name = r'$reified'
    ..annotations.add(WellKnownTypeReferences.override)
    ..type = code.MethodType.getter
    ..body = _$value.code
    ..lambda = true));

  builder.constructors.add(code.Constructor((b) => b
    ..name = 'wrap'
    ..requiredParameters.add(code.Parameter((b) => b
      ..toThis = true
      ..name = r'$value'))));

  if (element.isConstructable) {
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
              code.TypeReference((b) => b..symbol = element.name)
                  .newInstanceMaybeNamed(
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

  builder.methods.add(code.Method((b) => b
    ..name = r'$getProperty'
    ..annotations.add(WellKnownTypeReferences.override)
    ..returns = WellKnownTypeReferences.$Value.nullable(true)
    ..requiredParameters.addAll([
      code.Parameter((b) => b
        ..name = 'runtime'
        ..type = WellKnownTypeReferences.runtime),
      code.Parameter((b) => b
        ..name = 'identifier'
        ..type = WellKnownTypeReferences.string),
    ])
    ..body = code.Block.of([
      'switch(identifier) {'.toCode(),
      for (var method in newMethods) ...[
        "case '${method.name}':".toCode(),
        WellKnownTypeReferences.$Function
            .newInstance(
                [code.refer(settings.name).property('_${method.name}')])
            .returned
            .statement,
      ],
      for (var getter in newAccessors.where((e) => e.isGetter)) ...[
        "case '${getter.name}':".toCode(),
        (getter.isStatic ? element.thisType.refer() : _$value)
            .property(getter.name)
            .wrapped(getter.returnType, settings.knownWrappers)
            .returned
            .statement,
      ],
      'default:'.toCode(),
      code
          .refer(r'_$superWrapper')
          .property(r'$getProperty')
          .call([code.refer('runtime'), code.refer('identifier')])
          .returned
          .statement,
      '}'.toCode(),
    ])));

  builder.methods.add(code.Method.returnsVoid((b) => b
    ..name = r'$setProperty'
    ..annotations.add(WellKnownTypeReferences.override)
    ..requiredParameters.addAll([
      code.Parameter((b) => b
        ..name = 'runtime'
        ..type = WellKnownTypeReferences.runtime),
      code.Parameter((b) => b
        ..name = 'identifier'
        ..type = WellKnownTypeReferences.string),
      code.Parameter((b) => b
        ..name = 'value'
        ..type = WellKnownTypeReferences.$Value)
    ])
    ..body = code.Block.of([
      'switch(identifier) {'.toCode(),
      for (var setter in newAccessors.where((e) => e.isSetter)) ...[
        "case '${setter.name.substring(0, setter.name.length - 1)}':".toCode(),
        (setter.isStatic ? element.thisType.refer() : _$value)
            .property(setter.name.substring(0, setter.name.length - 1))
            .assign(code
                .refer('value') //
                .access(setter.parameters.first.type))
            .statement,
      ],
      'default:'.toCode(),
      code.refer(r'_$superWrapper').property(r'$setProperty').call([
        code.refer('runtime'),
        code.refer('identifier'),
        code.refer('value')
      ]).statement,
      '}'.toCode(),
    ])));

  builder.methods.add(code.Method((b) => b
    ..name = r'$getRuntimeType'
    ..annotations.add(WellKnownTypeReferences.override)
    ..returns = WellKnownTypeReferences.int
    ..requiredParameters.addAll([
      code.Parameter((b) => b
        ..name = 'runtime'
        ..type = WellKnownTypeReferences.runtime)
    ])
    ..body = code
        .refer('runtime')
        .property('lookupType')
        .call([code.refer(r'$type')])
        .returned
        .statement));

  for (var method in methods) {
    builder.methods.add(code.Method(
      (b) => b
        ..name = '_${method.name}'
        ..static = true
        ..returns = WellKnownTypeReferences.$Value.nullable(true)
        ..requiredParameters.addAll([
          code.Parameter((b) => b
            ..name = 'runtime'
            ..type = WellKnownTypeReferences.runtime),
          code.Parameter((b) => b
            ..name = 'target'
            ..type = WellKnownTypeReferences.$Value.nullable(true)),
          code.Parameter((b) => b
            ..name = 'args'
            ..type = WellKnownTypeReferences.list
                .withGeneric(WellKnownTypeReferences.$Value.nullable(true))),
        ])
        ..body = (method.isStatic
                ? element.thisType.refer()
                : code
                    .refer('target')
                    .nullChecked
                    .property(r'$value')
                    .asA(element.thisType.refer()))
            .property(method.name)
            .call([
              for (var (index, parameter) in method.parameters.indexed)
                if (parameter.isPositional)
                  code
                      .refer('args')
                      .index(code.literalNum(index))
                      .maybeNullChecked(!parameter.hasDefaultValue)
                      .access(parameter.type,
                          parameter.defaultValueCode?.asExpression())
            ], {
              for (var (index, parameter) in method.parameters.indexed)
                if (parameter.isNamed)
                  parameter.name: code
                      .refer('args')
                      .index(code.literalNum(index))
                      .maybeNullChecked(!parameter.hasDefaultValue)
                      .access(parameter.type,
                          parameter.defaultValueCode?.asExpression())
            })
            .wrapped(method.returnType, settings.knownWrappers)
            .returned
            .statement,
    ));
  }

  if (settings.bimodal) {
    builder.methods.addAll([
      for (var method in methodsWithPrivate)
        if (!method.isStatic)
          code.Method((b) => b
            ..name = method.name
            ..annotations.add(WellKnownTypeReferences.override)
            ..returns = method.returnType.refer()
            ..requiredParameters.addAll([
              for (var parameter in method.parameters)
                if (parameter.isRequiredPositional)
                  code.Parameter((b) => b
                    ..name = parameter.name
                    ..type = parameter.type.refer()
                    ..named = parameter.isNamed)
            ])
            ..optionalParameters.addAll([
              for (var parameter in method.parameters)
                if (!parameter.isRequiredPositional)
                  code.Parameter((b) => b
                    ..required = parameter.isRequired
                    ..name = parameter.name
                    ..type = parameter.type.refer()
                    ..defaultTo = parameter.defaultValueCode?.toCode()
                    ..named = parameter.isNamed)
            ])
            ..body = _$value
                .property(method.name)
                .call([
                  for (var parameter in method.parameters)
                    if (parameter.isPositional) code.refer(parameter.name),
                ], {
                  for (var parameter in method.parameters)
                    if (parameter.isNamed)
                      parameter.name: code.refer(parameter.name),
                }, [
                  //TODO: Generics
                ])
                .returned
                .statement),
      for (var accessor in accessorsWithPrivate)
        if (!accessor.isStatic)
          if (accessor.isGetter)
            code.Method((b) => b
              ..name = accessor.name
              ..annotations.add(WellKnownTypeReferences.override)
              ..returns = accessor.returnType.refer()
              ..type = code.MethodType.getter
              ..body = _$value.property(accessor.name).code
              ..lambda = true)
          else if (accessor.isSetter)
            code.Method((b) => b
              ..name = accessor.name.substring(0, accessor.name.length - 1)
              ..annotations.add(WellKnownTypeReferences.override)
              ..type = code.MethodType.setter
              ..requiredParameters.addAll([
                for (var parameter in accessor.parameters.take(1))
                  code.Parameter((b) => b
                    ..name = 'value'
                    ..type = parameter.type.refer())
              ])
              ..body = _$value
                  .property(
                      accessor.name.substring(0, accessor.name.length - 1))
                  .assign(code.refer('value'))
                  .code
              ..lambda = true)
    ]);
  }

  return builder.build();
}

final _$value = code.refer(r'$value');

extension ToStringWithDefaultDartObject on DartObject {
  String toStringWithDefault(String d) {
    return toStringValue() ?? d;
  }
}
