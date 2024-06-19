import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:code_builder/code_builder.dart' as code;
import 'package:eval_builder/src/build/tools/element_utils.dart';
import 'package:eval_builder/src/build/tools/generics.dart';

import 'settings.dart';
import 'tools/code_builder_utils.dart';
import 'tools/dart_type_to_code.dart';
import 'tools/discovery.dart';
import 'tools/sup_types.dart';
import 'well_known_type_references.dart';

abstract class WrapperBuilder<WrappedElement extends InterfaceElement> {
  final WrappedElement wrapped;
  final WrapperSettings settings;

  WrapperBuilder(this.wrapped, this.settings) {
    extendedWrapper = wrapped
        .discoverSupWrappers((e) => [e.supertype].nonNulls, settings.discoverer)
        .single; // It's safe to use last, since everything extends Object
    // Discover both interfaces an mixins, since dart_eval doesn't support
    // mixins. https://github.com/ethanblake4/dart_eval/issues/7
    interfaceWrappers = wrapped.discoverSupWrappers(
        (e) => e.interfaces.followedBy(e.mixins), settings.discoverer);
    mixinWrappers =
        wrapped.discoverSupWrappers((e) => e.mixins, settings.discoverer);

    supTypesTillWrappers = wrapped.discoverSupTillWrapper(
        (e) => [
              e.supertype,
              ...e.interfaces,
              ...e.mixins,
            ].nonNulls,
        settings.discoverer);

    List<MethodElement> lookupMethods(
        Iterable<(InterfaceType, MethodElement)> methods) {
      return methods
          .fold(
              Map.fromIterables(
                  filterMethods(wrapped.methods).map((e) => e.name),
                  filterMethods(wrapped.methods).map((e) => e)),
              (methods, method) {
            if ((method.$2.isPublic && !method.$2.isStatic) ||
                method.$1.element.library.id == wrapped.library.id) {
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
                  filterAccessors(wrapped.accessors)
                      .where((a) => a.isSetter || a.isGetter)
                      .map((e) => (e.isGetter, e.name)),
                  filterAccessors(wrapped.accessors)
                      .where((a) => a.isSetter || a.isGetter)),
              (accessors, accessor) {
            if ((accessor.$2.isPublic && !accessor.$2.isStatic) ||
                accessor.$1.element.library.id == wrapped.library.id) {
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
    newMethodsWithPrivate = lookupMethods(supTypesTillWrappers.expand((s) =>
        filterMethods(s.methods).where((m) => !m.isStatic).map((m) => (s, m))));

    newAccessorsWithPrivate = lookupAccessors(supTypesTillWrappers.expand((s) =>
        filterAccessors(s.accessors)
            .where((a) => !a.isStatic)
            .map((m) => (s, m))));

    newMethods = newMethodsWithPrivate.where((e) => !e.isPrivate);
    newAccessors = newAccessorsWithPrivate.where((e) => !e.isPrivate);

    methodsWithPrivate = lookupMethods(
        wrapped.allSupertypes.expand((s) => s.methods.map((m) => (s, m))));
    accessorsWithPrivate = lookupAccessors(
        wrapped.allSupertypes.expand((s) => s.accessors.map((a) => (s, a))));

    methods = methodsWithPrivate.where((e) => !e.isPrivate);
  }

  late final (InterfaceType, WrapperDiscovery) extendedWrapper;
  late final List<(InterfaceType, WrapperDiscovery)> interfaceWrappers;
  late final List<(InterfaceType, WrapperDiscovery)> mixinWrappers;
  late final List<InterfaceType> supTypesTillWrappers;
  late final List<MethodElement> newMethodsWithPrivate;
  late final List<PropertyAccessorElement> newAccessorsWithPrivate;
  late final Iterable<MethodElement> newMethods;
  late final Iterable<PropertyAccessorElement> newAccessors;
  late final List<MethodElement> methodsWithPrivate;
  late final List<PropertyAccessorElement> accessorsWithPrivate;
  late final Iterable<MethodElement> methods;

  code.Reference get selfReference => code.refer(settings.name);

  Iterable<MethodElement> filterMethods(Iterable<MethodElement> unfiltered) {
    return unfiltered;
  }

  Iterable<PropertyAccessorElement> filterAccessors(
      Iterable<PropertyAccessorElement> unfiltered) {
    return unfiltered;
  }

  code.Class build() {
    var builder = code.ClassBuilder();
    builder
      ..name = settings.name
      ..implements.addAll([
        if (settings.bimodal) wrapped.thisType.refer(),
        WellKnownTypeReferences.$Instance,
      ].nonNulls);

    builder.types.addAll(wrapped.typeParameters.map((t) => t.refer()));

    addConfigureForCompile(builder);
    addConfigureForRuntime(builder);

    addTypeField(builder);

    addDeclarationField(builder);
    addValueField(builder);

    addSuperWrapperField(builder);

    addReifiedField(builder);

    addConstructor(builder);

    addGetPropertyMethod(builder);

    addSetPropertyMethod(builder);

    addGetRuntimeTypeMethod(builder);

    addStaticPropertyWrappers(builder);

    if (settings.bimodal) {
      addBimodalMethodOverrides(builder);
    }

    return builder.build();
  }

  void addConfigureForCompile(code.ClassBuilder builder) {
    builder.methods.add(code.Method.returnsVoid((b) => b
      ..name = 'configureForCompile'
      ..static = true
      ..requiredParameters.add(code.Parameter((b) => b
        ..name = 'registry'
        ..type = WellKnownTypeReferences.bridgeDeclarationRegistry))
      ..body = code.Block.of(
          buildConfigureForCompileStatements(code.refer('registry')))));
  }

  List<code.Code> buildConfigureForCompileStatements(code.Reference registry) {
    return [];
  }

  void addConfigureForRuntime(code.ClassBuilder builder) {
    builder.methods.add(code.Method.returnsVoid((b) => b
      ..name = 'configureForRuntime'
      ..static = true
      ..requiredParameters.add(code.Parameter((b) => b
        ..name = 'runtime'
        ..type = WellKnownTypeReferences.runtime))
      ..body = code.Block.of(
          buildConfigureForRuntimeStatements(code.refer('runtime')))));
  }

  List<code.Code> buildConfigureForRuntimeStatements(code.Reference runtime) {
    return [
      for (var method in wrapped.methods)
        if (method.isStatic)
          runtime.property('registerBridgeFunc').call([
            code.literalString(settings.libIdentifier),
            code.literalString('${wrapped.name}.${method.name}'),
            selfReference.property(method.wrapperMethodName)
          ]).statement,
      for (var accessor in wrapped.accessors)
        if (accessor.isStatic && (accessor.isGetter || accessor.isSetter))
          runtime.property('registerBridgeFunc').call([
            code.literalString(settings.libIdentifier),
            code.literalString('${wrapped.name}.${accessor.dartEvalName}'),
            selfReference.property(accessor.wrapperMethodName)
          ]).statement,
    ];
  }

  void addTypeField(code.ClassBuilder builder) {
    builder.fields.add(code.Field((b) => b
      ..name = r'$type'
      ..static = true
      ..modifier = code.FieldModifier.constant
      ..assignment = WellKnownTypeReferences.bridgeTypeSpec.call([
        code.literalString(settings.libIdentifier),
        code.literalString(wrapped.name)
      ]).code));
  }

  void addDeclarationField(code.ClassBuilder builder);

  void addConstructor(code.ClassBuilder builder) {
    builder.constructors.add(code.Constructor((b) => b
      ..name = 'wrap'
      ..requiredParameters.add(code.Parameter((b) => b
        ..toThis = true
        ..name = r'$value'))));
  }

  void addValueField(code.ClassBuilder builder) {
    builder.fields.add(code.Field((b) => b
      ..name = r'$value'
      ..annotations.add(WellKnownTypeReferences.override)
      ..modifier = code.FieldModifier.final$
      ..type = wrapped.thisType.refer()));
  }

  void addSuperWrapperField(code.ClassBuilder builder) {
    builder.fields.add(code.Field((b) => b
      ..name = r'_$superWrapper'
      ..modifier = code.FieldModifier.final$
      ..late = true
      ..type = WellKnownTypeReferences.$Instance
      ..assignment = extendedWrapper.$2.wrap(_$value).code));
  }

  void addReifiedField(code.ClassBuilder builder) {
    builder.methods.add(code.Method((b) => b
      ..name = r'$reified'
      ..annotations.add(WellKnownTypeReferences.override)
      ..type = code.MethodType.getter
      ..body = _$value.code
      ..lambda = true));
  }

  void addGetPropertyMethod(code.ClassBuilder builder) {
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
              .newInstance([selfReference.property(method.wrapperMethodName)])
              .returned
              .statement,
        ],
        for (var getter in newAccessors.where((e) => e.isGetter)) ...[
          "case '${getter.name}':".toCode(),
          (getter.isStatic ? wrapped.thisType.refer() : _$value)
              .property(getter.actualName)
              .wrapped(getter.returnType, settings.discoverer)
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
  }

  void addSetPropertyMethod(code.ClassBuilder builder) {
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
          "case '${setter.actualName}':".toCode(),
          (setter.isStatic ? wrapped.thisType.refer() : _$value)
              .property(setter.actualName)
              .assign(code
                  .refer('value') //
                  .access(setter.parameters.first.type, true))
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
  }

  void addGetRuntimeTypeMethod(code.ClassBuilder builder) {
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
  }

  void addStaticPropertyWrappers(code.ClassBuilder builder) {
    for (var method in newMethods) {
      builder.methods.add(code.Method(
        (b) => b
          ..name = method.wrapperMethodName
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
                  ? wrapped.thisType.refer()
                  : code
                      .refer('target')
                      .nullChecked
                      .property(r'$value')
                      .asA(wrapped.thisType.refer()))
              .property(method.name)
              .call([
                for (var (index, parameter) in method.parameters.indexed)
                  if (parameter.isPositional)
                    code
                        .refer('args')
                        .index(code.literalNum(index))
                        .maybeNullChecked(parameter.isRequired)
                        .access(parameter.type, parameter.isRequired,
                            parameter.defaultValueCode?.asExpression())
              ], {
                for (var (index, parameter) in method.parameters.indexed)
                  if (parameter.isNamed)
                    parameter.name: code
                        .refer('args')
                        .index(code.literalNum(index))
                        .maybeNullChecked(parameter.isRequired)
                        .access(parameter.type, parameter.isRequired,
                            parameter.defaultValueCode?.asExpression())
              })
              .wrapped(method.returnType, settings.discoverer)
              .returned
              .statement,
      ));
    }
    for (var accessor
        in wrapped.accessors.where((element) => element.isStatic)) {
      assert(accessor.isGetter || accessor.isSetter);
      builder.methods.add(code.Method((b) => b
        ..name = accessor.wrapperMethodName
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
        ..body = accessor.isGetter
            ? wrapped.thisType
                .refer()
                .property(accessor.actualName)
                .wrapped(accessor.returnType, settings.discoverer)
                .returned
                .statement
            : code.Block.of([
                wrapped.thisType
                    .refer()
                    .property(accessor.actualName)
                    .assign(code
                        .refer('args')
                        .index(code.literalNum(0))
                        .nullChecked
                        .access(accessor.parameters.first.type, true))
                    .statement,
                code.literalNull.returned.statement,
              ])));
    }
  }

  void addBimodalMethodOverrides(code.ClassBuilder builder) {
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
                }, method.typeParameters.map((e) => e.refer()).toList())
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
}

final _$value = code.refer(r'$value');

extension ToStringWithDefaultDartObject on DartObject {
  String toStringWithDefault(String d) {
    return toStringValue() ?? d;
  }
}
