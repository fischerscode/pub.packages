import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:eval_builder/src/build/prefix_resolver.dart';
import 'package:eval_builder/src/build/well_known_wrappers.dart';
import 'package:eval_builder_annotations/annotations.dart';
import 'package:code_builder/code_builder.dart' as code;
import 'package:meta/meta.dart';

import 'well_known_type_references.dart';

class WrapperSettings implements Wrapper {
  @override
  final bool bimodal;

  @override
  final DefaultParameterStrategy defaultParameterStrategy;

  @override
  final Map<Type, Type> knownWrappers;

  @override
  final String libIdentifier;

  @override
  final String name;

  const WrapperSettings(
      {required this.bimodal,
      required this.defaultParameterStrategy,
      required this.knownWrappers,
      required this.libIdentifier,
      required this.name});
}

code.Class buildWrapper(ClassElement element, WrapperSettings settings) {
  var builder = code.ClassBuilder();
  builder
    ..name = settings.name
    ..implements.addAll([
      if (settings.bimodal) element.thisType.refer(),
      code.TypeReference((b) => b
        ..symbol = r'$Instance'
        ..url = WellKnownTypeReferences.dartEvalBridgePackage)
    ]);

  builder.types.addAll([
    //TODO: Generics
  ]);

  builder.fields.add(code.Field((b) => b
    ..name = r'$type'
    ..static = true
    ..modifier = code.FieldModifier.final$
    ..assignment = WellKnownTypeReferences.bridgeTypeSpec
        .call([
          code.literalString(settings.libIdentifier),
          code.literalString(element.name)
        ])
        .property('ref')
        .code));

  var constructors = element.constructors.where((e) => !e.isPrivate);

  //TODO: Polymorphism
  var methodsWithPrivate = element.methods;
  var accessorsWithPrivate = element.accessors;

  var methods = methodsWithPrivate.where((e) => !e.isPrivate);
  var accessors = accessorsWithPrivate.where((e) => !e.isPrivate);

  builder.fields.add(code.Field((b) => b
    ..name = r'$declaration'
    ..static = true
    ..modifier = code.FieldModifier.final$
    ..assignment = WellKnownTypeReferences.bridgeClassDef.newInstance(
      [
        WellKnownTypeReferences.bridgeClassType.newInstance([
          code.refer(r'$type')
        ], {
          // r'$extends': //TODO: Polymorphism
          // r'$implements': //TODO: Polymorphism
          // r'$with': //TODO: Mixins
          // r'isAbstract': //TODO: Abstract base
          // r'generics': //TODO: Generics
        })
      ],
      {
        'constructors': code.literalMap({
          for (var constructor in constructors)
            code.literalString(constructor.name):
                WellKnownTypeReferences.bridgeConstructorDef.call(
                    [constructor.functionDef()],
                    {'isFactory': code.literalBool(constructor.isFactory)}),
        }),
        'methods': code.literalMap({
          for (var method in methods)
            code.literalString(method.name): method.methodDef(),
        }),
        'getters': code.literalMap({
          for (var accessor in accessors)
            if (accessor.isGetter)
              code.literalString(accessor.name): accessor.methodDef(),
        }),
        'setters': code.literalMap({
          for (var accessor in accessors)
            if (accessor.isSetter)
              code.literalString(
                      accessor.name.substring(0, accessor.name.length - 1)):
                  accessor.methodDef(),
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
      ..name = r'$value'))
    ..constant = true));

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
      for (var method in methods) ...[
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
      for (var getter in accessors.where((e) => e.isGetter)) ...[
        "case '${getter.name}':".toCode(),
        (getter.isStatic ? element.thisType.refer() : _$value)
            .property(getter.name)
            .wrapped(getter.returnType)
            .returned
            .statement,
      ],
      '}'.toCode(),
    ])));

  builder.methods.add(code.Method((b) => b
    ..name = r'$setProperty'
    ..annotations.add(WellKnownTypeReferences.override)
    ..returns = WellKnownTypeReferences.$Value.nullable(true)
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
      for (var setter in accessors.where((e) => e.isSetter)) ...[
        "case '${setter.name.substring(0, setter.name.length - 1)}':".toCode(),
        (setter.isStatic ? element.thisType.refer() : _$value)
            .property(setter.name.substring(0, setter.name.length - 1))
            .assign(code
                .refer('value') //
                .access(setter.parameters.first.type))
            .statement,
      ],
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
        .call([code.refer(r'$type').property('spec').nullChecked])
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
            ..type = code.TypeReference((b) => b
              ..symbol = r'List'
              ..types.add(WellKnownTypeReferences.$Value.nullable(true)))),
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
            .wrapped(method.returnType)
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
  code.TypeReference refer() {
    return code.TypeReference((b) => b
      ..symbol = element!.name
      ..isNullable = isNullable
      ..url = '_library_with_element:${element!.id}'
      ..types.addAll([
        //TODO: Generics
      ]));
  }

  code.Expression annotated() {
    var this$ = this;
    switch (this$) {
      case ParameterizedType():
        var wellKnown = WellKnownWrapper.get(this);

        if (wellKnown != null) {
          return WellKnownTypeReferences.bridgeTypeSpec
              .newInstance([
                code.literalString(wellKnown.wrappedTypeOwner),
                code.literalString(wellKnown.wrappedTypeSymbol)
              ])
              .property('ref')
              .property(isNullable ? 'annotate' : 'annotateNullable');
        }
        //TODO: Other tyes then core types.
        throw UnimplementedError(
            "Unknown bridgeTypeSpec for ${getDisplayString()}.");
    }
    throw UnimplementedError(
        "Can not annotate $runtimeType. Only CoreTypes are currently supported.");
  }

  bool get isNullable {
    return nullabilitySuffix == NullabilitySuffix.question;
  }
}

extension on ExecutableElement {
  code.Expression methodDef() {
    return code.TypeReference((b) => b
      ..symbol = 'BridgeMethodDef'
      ..url = WellKnownTypeReferences.dartEvalBridgePackage).newInstance([
      functionDef()
    ], {
      'isStatic': code.literalBool(isStatic) //TODO: Static methods
    });
  }

  code.Expression functionDef() {
    return code.TypeReference((b) => b
      ..symbol = 'BridgeFunctionDef'
      ..url = WellKnownTypeReferences.dartEvalBridgePackage).newInstance([], {
      'returns': code.refer(r'$type').property('annotate'),
      'params': code.literalList([
        for (var param in parameters)
          if (param.isPositional)
            code
                .literalString(param.name)
                .property(param.isRequired ? 'param' : 'paramOptional')
                .call({param.type.annotated()})
      ]),
      'namedParams': code.literalList([
        for (var param in parameters)
          if (param.isNamed)
            code
                .literalString(param.name)
                .property(param.isRequired ? 'param' : 'paramOptional')
                .call({param.type.annotated()})
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
  code.Expression wrapped(DartType type) {
    final wellKnown = WellKnownWrapper.get(type);

    if (wellKnown != null) {
      if (type.isNullable) {
        return code.Method((b) => b.body = code.Block.of([
              code.declareFinal(r'$').assign(this).statement,
              code
                  .refer(r'$')
                  .equalTo(code.literalNull)
                  .conditional(WellKnownTypeReferences.$null.constInstance([]),
                      wellKnown.wrap(code.refer(r'$')))
                  .returned
                  .statement,
            ])).closure.call([]);
      } else {
        return wellKnown.wrap(this);
      }
    } else {
      //TODO: Detect annotated classes and use known wrappers
      throw UnsupportedError('No wrapper known for ${type.getDisplayString()}');
    }
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
