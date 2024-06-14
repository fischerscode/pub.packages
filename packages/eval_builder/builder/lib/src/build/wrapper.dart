import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:eval_builder/src/build/well_known_wrappers.dart';
import 'package:eval_builder_annotations/annotations.dart';
import 'package:code_builder/code_builder.dart' as code;
import 'package:meta/meta.dart';

import 'well_known_type_references.dart';

typedef KnownWrapperMap = Map<DartType, ({String spec, String wrap})>;

class WrapperSettings {
  final bool bimodal;

  final DefaultParameterStrategy defaultParameterStrategy;

  final KnownWrapperMap knownWrappers;

  final String libIdentifier;

  final String name;

  const WrapperSettings(
      {required this.bimodal,
      required this.defaultParameterStrategy,
      required this.knownWrappers,
      required this.libIdentifier,
      required this.name});
}

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
            .newInstance([
              (method.isStatic
                      ? element.thisType.refer()
                      : code.refer(settings.name))
                  .property('_${method.name}')
            ])
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
        ..body = code
            .refer('target')
            .nullChecked
            .property(r'$value')
            .asA(element.thisType.refer())
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

@visibleForTesting
extension DartTypeToCode on DartType {
  DartType? get nullIfObject {
    return isDartCoreObject ? null : this;
  }

  code.Reference refer() {
    if (this is VoidType) {
      return code.TypeReference((b) => b
        ..symbol = 'void'
        ..url = 'dart:core');
    }
    final this$ = this;
    switch (this$) {
      case ParameterizedType():
        return code.TypeReference((b) => b
          ..symbol = element!.name
          ..isNullable = isNullable
          ..url = '_library_with_element:${element!.id}'
          ..types.addAll([
            //TODO: Generics
          ]));
      case FunctionType():
        return code.FunctionType((b) => b
              ..isNullable = isNullable
              ..returnType = this$.returnType.refer()
              ..requiredParameters.addAll({
                for (var parameter in this$.parameters)
                  if (parameter.isRequiredPositional) parameter.type.refer()
              })
              ..optionalParameters.addAll({
                for (var parameter in this$.parameters)
                  if (parameter.isOptionalPositional) parameter.type.refer()
              })
              ..namedParameters.addAll({
                for (var parameter in this$.parameters)
                  if (parameter.isOptionalNamed)
                    parameter.name: parameter.type.refer()
              })
              ..namedRequiredParameters.addAll({
                for (var parameter in this$.parameters)
                  if (parameter.isRequiredNamed)
                    parameter.name: parameter.type.refer()
              })
            // ..types //TODO: Generics
            );
    }
    throw UnimplementedError(
        "Can not refer to ${getDisplayString()}. Only ParameterizedTypes are currently supported.");
  }

  @Deprecated('Use WrapperDiscovery')
  ElementAnnotation? getWrappedAnnotation() {
    return element!.metadata
        .where((a) =>
            a.element!.enclosingElement!.name == '$Wrapper' &&
            a.element!.librarySource!.uri.toString() ==
                'package:eval_builder_annotations/annotations.dart')
        .firstOrNull;
  }

  code.Expression annotated(ClassElement self, KnownWrapperMap knownWrappers) {
    if (this is VoidType) {
      return WellKnownTypeReferences.coreTypes
          .property('voidType')
          .property('ref')
          .property('annotate');
    }

    if (self.id == element?.id) {
      return code
          .refer(r'$type')
          .property('ref')
          .property(isNullable ? 'annotate' : 'annotateNullable');
    }

    var this$ = this;
    switch (this$) {
      case ParameterizedType():
        var discovery = WrapperDiscovery.discover(
            this$.element as TypeParameterizedElement, knownWrappers);

        if (discovery != null) {
          return WellKnownTypeReferences.bridgeTypeRef.newInstance([
            discovery.spec,
            code.literalList([
              //TODO: Generics
            ])
          ]).property(isNullable ? 'annotate' : 'annotateNullable');
        }

        throw UnimplementedError(
            "Unknown BridgeTypeSpec for wrapper of ${getDisplayString()}.");
      case FunctionType():
        return WellKnownTypeReferences.bridgeTypeAnnotation.newInstance([
          WellKnownTypeReferences.bridgeTypeRef
              .newInstanceNamed('genericFunction', [
            WellKnownTypeReferences.bridgeFunctionDef.newInstance([], {
              'returns': this$.returnType.annotated(self, knownWrappers),
              'params': code.literalList([
                for (var parameter in this$.parameters)
                  if (parameter.isPositional)
                    WellKnownTypeReferences.bridgeParameter.newInstance([
                      code.literalString(parameter.name),
                      parameter.type.annotated(self, knownWrappers),
                      code.literalBool(parameter.isOptional)
                    ]),
              ]),
              'namedParams': code.literalList([
                for (var parameter in this$.parameters)
                  if (parameter.isNamed)
                    WellKnownTypeReferences.bridgeParameter.newInstance([
                      code.literalString(parameter.name),
                      parameter.type.annotated(self, knownWrappers),
                      code.literalBool(parameter.isOptional)
                    ]),
              ]),
              // 'generics': code.literalConstMap() //TODO: Generics
            }),
          ]),
        ], {
          'nullable': code.literalBool(this$.isNullable)
        }
            //TODO: Generics
            );
    }
    throw UnimplementedError(
        "Can not annotate ${getDisplayString()}. Only ParameterizedTypes are currently supported.");
  }

  bool get isNullable {
    return nullabilitySuffix == NullabilitySuffix.question;
  }
}

extension on ExecutableElement {
  code.Expression methodDef(ClassElement self, WrapperSettings settings) {
    return code.TypeReference((b) => b
      ..symbol = 'BridgeMethodDef'
      ..url = WellKnownTypeReferences.dartEvalBridgePackage).newInstance([
      functionDef(self, settings)
    ], {
      'isStatic': code.literalBool(isStatic) //TODO: Static methods
    });
  }

  code.Expression functionDef(ClassElement self, WrapperSettings settings) {
    return WellKnownTypeReferences.bridgeFunctionDef.newInstance([], {
      'returns': returnType.annotated(self, settings.knownWrappers),
      'params': code.literalList([
        for (var param in parameters)
          if (param.isPositional)
            code
                .literalString(param.name)
                .property(param.isRequired ? 'param' : 'paramOptional')
                .call({param.type.annotated(self, settings.knownWrappers)})
      ]),
      'namedParams': code.literalList([
        for (var param in parameters)
          if (param.isNamed)
            code
                .literalString(param.name)
                .property(param.isRequired ? 'param' : 'paramOptional')
                .call({param.type.annotated(self, settings.knownWrappers)})
      ]),
      'generics': code.literalMap({
        //TODO: Generics
      })
    });
  }
}

extension on code.Reference {
  code.Expression newInstanceMaybeNamed(
    String? name,
    Iterable<code.Expression> positionalArguments, [
    Map<String, code.Expression> namedArguments = const {},
    List<code.Reference> typeArguments = const [],
  ]) {
    if (name == null) {
      return newInstance(positionalArguments, namedArguments, typeArguments);
    } else {
      return newInstanceNamed(
          name, positionalArguments, namedArguments, typeArguments);
    }
  }
}

extension on String {
  code.Code toCode() {
    return code.Code(this);
  }

  code.Expression asExpression() {
    return code.CodeExpression(toCode());
  }
}

extension on code.Expression {
  code.Expression nullCheckedOrSafeProperty(String name, bool safe) {
    return safe ? nullSafeProperty(name) : nullChecked.property(name);
  }

  code.Expression maybeNullSafeProperty(String name, bool safe) {
    return safe ? nullSafeProperty(name) : property(name);
  }

  /// [ifNullThen], but null checks if [other] is null.
  code.Expression maybeIfNullThen(code.Expression? other) {
    if (other == null) {
      return nullChecked;
    } else {
      return ifNullThen(other);
    }
  }

  code.Expression maybeNullChecked(bool doNullCheck) {
    if (doNullCheck) {
      return nullChecked;
    } else {
      return this;
    }
  }

  /// Access this as [type].
  /// Will call $value or $reified when needed.
  code.Expression access(DartType type, [code.Expression? defaultExpression]) {
    var maybeUnpack = code.refer(r'$$').isNotA(type.refer()).conditional(
        code.refer(r'$').property(r'$reified').asA(type.refer()),
        code.refer(r'$$'));
    var maybeNull = type.isNullable
        ? code
            .refer(r'$$')
            .isA(WellKnownTypeReferences.$null)
            .conditional(code.literalNull, maybeUnpack)
        : maybeUnpack;
    var maybeWithDefault = defaultExpression != null
        ? code
            .refer(r'$')
            .equalTo(code.literalNull)
            .conditional(defaultExpression, maybeNull)
        : maybeNull;

    return code.Method((b) => b
      ..requiredParameters.add(code.Parameter((b) => b
        ..name = r'$'
        ..type =
            WellKnownTypeReferences.$Value.nullable(defaultExpression != null)))
      ..body = code.Block.of([
        code
            .declareFinal(r'$$')
            .assign(code.refer(r'$').asA(WellKnownTypeReferences.dynamic))
            .statement,
        maybeWithDefault.returned.statement,
      ])).closure.call([this]);
  }

  /// Wraps this (has Type [type]) as a [$Value].
  code.Expression wrapped(DartType type, KnownWrapperMap knownWrappers) {
    if (type is VoidType) {
      return code.Method((b) => b.body = code.Block.of([
            statement,
            code.literalNull.returned.statement,
          ])).closure.call([]);
    }

    switch (type) {
      case ParameterizedType():
        var discovery = WrapperDiscovery.discover(
            type.element as TypeParameterizedElement, knownWrappers);

        if (discovery != null) {
          if (type.isNullable) {
            return code.Method((b) => b.body = code.Block.of([
                  code.declareFinal(r'$').assign(this).statement,
                  code
                      .refer(r'$')
                      .equalTo(code.literalNull)
                      .conditional(
                          WellKnownTypeReferences.$null.constInstance([]),
                          discovery.wrap(code.refer(r'$')))
                      .returned
                      .statement,
                ])).closure.call([]);
          } else {
            return discovery.wrap(this);
          }
        }

        throw UnimplementedError(
            "Unknown Wrapper for ${type.getDisplayString()}.");
      case FunctionType():
        closureBuilder(code.Expression e) =>
            WellKnownTypeReferences.$Function.newInstance([
              code.Method(
                (b) => b
                  ..returns = type.refer()
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
                        ..type = WellKnownTypeReferences.list.withGeneric(
                            WellKnownTypeReferences.$Value.nullable(true)),
                    ),
                  ])
                  ..body = e
                      .call([
                        for (var (index, parameter) in type.parameters.indexed)
                          if (parameter.isPositional)
                            code
                                .refer('args')
                                .index(code.literalNum(index))
                                .maybeNullChecked(!parameter.hasDefaultValue)
                                .access(parameter.type,
                                    parameter.defaultValueCode?.asExpression())
                      ], {
                        for (var (index, parameter) in type.parameters.indexed)
                          if (parameter.isNamed)
                            parameter.name: code
                                .refer('args')
                                .index(code.literalNum(index))
                                .maybeNullChecked(!parameter.hasDefaultValue)
                                .access(parameter.type,
                                    parameter.defaultValueCode?.asExpression())
                      })
                      .wrapped(type.returnType, knownWrappers)
                      .returned
                      .statement,
              ).closure,
            ]);

        if (type.isNullable) {
          return code.Method((b) => b.body = code.Block.of([
                code.declareFinal(r'$').assign(this).statement,
                code
                    .refer(r'$')
                    .equalTo(code.literalNull)
                    .conditional(
                        WellKnownTypeReferences.$null.constInstance([]),
                        closureBuilder(code.refer(r'$')))
                    .returned
                    .statement,
              ])).closure.call([]);
        } else {
          return closureBuilder(this);
        }
    }
    throw UnimplementedError(
        "Can not wrap ${type.getDisplayString()}. Only ParameterizedTypes are currently supported.");
  }
}

final _$value = code.refer(r'$value');

extension on code.TypeReference {
  code.TypeReference nullable(bool nullable) =>
      (toBuilder()..isNullable = nullable).build();
  code.TypeReference withGeneric(code.TypeReference generic) => (toBuilder()
        ..types.clear()
        ..types.add(generic))
      .build();
  code.TypeReference addGeneric(code.TypeReference generic) =>
      (toBuilder()..types.add(generic)).build();
}

extension on DartObject {
  String toStringWithDefault(String d) {
    return toStringValue() ?? d;
  }
}

extension on (InterfaceType, WrapperDiscovery) {
  /// Create a [WellKnownTypeReferences.bridgeTypeRef]
  code.Expression get ref {
    return WellKnownTypeReferences.bridgeTypeRef.call([
      $2.spec,
      //TODO: Generics
    ]);
  }
}

extension on InterfaceElement {
  List<(InterfaceType, WrapperDiscovery)> discoverSupWrappers(
      Iterable<InterfaceType> Function(InterfaceElement) sup,
      KnownWrapperMap knownWrappers) {
    var results = <(InterfaceType, WrapperDiscovery)>[];
    var currentLayer = sup(this);

    while (currentLayer.isNotEmpty) {
      var nextLayer = <InterfaceType>[];
      for (var current in currentLayer) {
        var discovery =
            WrapperDiscovery.discover(current.element, knownWrappers);
        if (discovery != null) {
          results.add((current, discovery));
        } else {
          nextLayer.addAll(sup(current.element));
        }
      }
      currentLayer = nextLayer;
    }

    return results;
  }

  List<InterfaceType> discoverSupTillWrapper(
      Iterable<InterfaceType> Function(InterfaceElement) sup,
      KnownWrapperMap knownWrappers) {
    var results = <InterfaceType>[];
    var currentLayer = sup(this);

    while (currentLayer.isNotEmpty) {
      var nextLayer = <InterfaceType>[];
      for (var current in currentLayer) {
        if (WrapperDiscovery.discover(current.element, knownWrappers) == null) {
          results.add(current);
          nextLayer.addAll(sup(current.element));
        }
      }
      currentLayer = nextLayer;
    }

    return results;
  }
}

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
  final String _spec;
  final String _wrap;

  KnownWrapperDiscovery({required String spec, required String wrap})
      : _spec = spec,
        _wrap = wrap,
        super._();

  @override
  code.Expression get spec => _spec.asExpression();

  @override
  code.Expression wrap(code.Expression inner) {
    return _wrap.asExpression().call([inner]);
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
