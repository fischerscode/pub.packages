import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:eval_builder_annotations/annotations.dart';
import 'package:code_builder/code_builder.dart' as code;

const _dart_eval_bridge = 'package:dart_eval/dart_eval_bridge.dart';
final _override = code.refer('override');

code.Class buildWrapper(ClassElement element, Wrapper annotation) {
  final className = annotation.name ?? '\$${element.name}';
  final libIdentifier =
      annotation.libIdentifier ?? 'package:my_eval/types.dart';

  var builder = code.ClassBuilder();
  builder
    ..name = className
    ..implements.addAll([
      //TODO: bimodal
      code.TypeReference((b) => b
        ..symbol = r'$Instance'
        ..url = _dart_eval_bridge)
    ]);

  builder.types.addAll([
    //TODO: Generics
  ]);

  builder.fields.add(code.Field((b) => b
    ..name = r'$type'
    ..static = true
    ..modifier = code.FieldModifier.final$
    ..assignment = _BridgeTypeSpec.call([
      code.literalString(libIdentifier),
      code.literalString(element.name)
    ]).property('ref').code));

  //TODO: Polymorphism
  var methods = element.methods.where((e) => !e.isStatic || !e.isPrivate);
  var accessors = element.accessors.where((e) => !e.isStatic || !e.isPrivate);

  bool hasOptionalParameterWithDefault = Iterable<ExecutableElement>.empty()
      .followedBy(element.constructors)
      .followedBy(methods)
      .any(
        (e) => e.parameters.any((p) => p.hasDefaultValue),
      );
  if (hasOptionalParameterWithDefault) {
    print('Default values are currently not supported. '
        'They will never be used.');
  }

  builder.fields.add(code.Field((b) => b
    ..name = r'$declaration'
    ..static = true
    ..modifier = code.FieldModifier.final$
    ..assignment = _BridgeClassDef.newInstance(
      [
        _BridgeClassType.newInstance([
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
          for (var constructor in element.constructors)
            code.literalString(constructor.name): _BridgeConstructorDef.call(
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
    ..annotations.add(_override)
    ..modifier = code.FieldModifier.final$
    ..type = element.thisType.refer()));

  builder.methods.add(code.Method((b) => b
    ..name = r'$reified'
    ..annotations.add(_override)
    ..type = code.MethodType.getter
    ..body = _$value.code
    ..lambda = true));

  builder.constructors.add(code.Constructor((b) => b
    ..name = 'wrap'
    ..requiredParameters.add(code.Parameter((b) => b
      ..toThis = true
      ..name = r'$value'))
    ..constant = true));

  for (var constructor in element.constructors) {
    builder.methods.add(code.Method((b) => b
      ..name = constructor.name.isEmpty ? r'$new' : '\$${constructor.name}'
      ..returns = _$Value.nullable(true)
      ..static = true
      ..requiredParameters.addAll([
        code.Parameter((b) => b
          ..name = 'runtime'
          ..type = _Runtime),
        code.Parameter((b) => b
          ..name = 'target'
          ..type = _$Value.nullable(true)),
        code.Parameter((b) => b
          ..name = 'args'
          ..type = code.TypeReference((b) => b
            ..symbol = 'List'
            ..types.add(_$Value.nullable(true)))),
      ])
      ..body = code.TypeReference((b) => b.symbol = className)
          .newInstanceNamed('wrap', [
            code.TypeReference((b) => b..symbol = element.name)
                .newInstanceMaybeNamed(
                    constructor.name.isEmpty ? null : constructor.name, [
              for (var (index, parameter) in constructor.parameters.indexed)
                if (parameter.isPositional)
                  code
                      .refer('args')
                      .index(code.literalNum(index))
                      .access(parameter.type)
            ], {
              for (var (index, parameter) in constructor.parameters.indexed)
                if (parameter.isNamed)
                  parameter.name: code
                      .refer('args')
                      .index(code.literalNum(index))
                      .access(parameter.type)
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
    ..annotations.add(_override)
    ..returns = _$Value.nullable(true)
    ..requiredParameters.addAll([
      code.Parameter((b) => b
        ..name = 'runtime'
        ..type = _Runtime),
      code.Parameter((b) => b
        ..name = 'identifier'
        ..type = _String),
    ])
    ..body = code.Block.of([
      'switch(identifier) {'.toCode(),
      for (var method in methods) ...[
        "case '${method.name}':".toCode(),
        _$Function
            .newInstance([
              (method.isStatic
                      ? element.thisType.refer()
                      : code.refer(className))
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
    ..annotations.add(_override)
    ..returns = _$Value.nullable(true)
    ..requiredParameters.addAll([
      code.Parameter((b) => b
        ..name = 'runtime'
        ..type = _Runtime),
      code.Parameter((b) => b
        ..name = 'identifier'
        ..type = _String),
      code.Parameter((b) => b
        ..name = 'value'
        ..type = _$Value)
    ])
    ..body = code.Block.of([
      'switch(identifier) {'.toCode(),
      for (var setter in accessors.where((e) => e.isSetter)) ...[
        "case '${setter.name.substring(0, setter.name.length - 1)}':".toCode(),
        (setter.isStatic ? element.thisType.refer() : _$value)
            .property(setter.name.substring(0, setter.name.length - 1))
            .assign(
                code.refer('value').access(setter.parameters.first.type, false))
            .statement,
      ],
      '}'.toCode(),
    ])));

  builder.methods.add(code.Method((b) => b
    ..name = r'$getRuntimeType'
    ..annotations.add(_override)
    ..returns = _int
    ..requiredParameters.addAll([
      code.Parameter((b) => b
        ..name = 'runtime'
        ..type = _Runtime)
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
        ..returns = _$Value.nullable(true)
        ..requiredParameters.addAll([
          code.Parameter((b) => b
            ..name = 'runtime'
            ..type = _Runtime),
          code.Parameter((b) => b
            ..name = 'target'
            ..type = _$Value.nullable(true)),
          code.Parameter((b) => b
            ..name = 'args'
            ..type = code.TypeReference((b) => b
              ..symbol = r'List'
              ..types.add(_$Value.nullable(true)))),
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
                  //TODO: Don't add when optional, not nullable and arg is null.
                  code
                      .refer('args')
                      .index(code.literalNum(index))
                      .access(parameter.type)
            ], {
              for (var (index, parameter) in method.parameters.indexed)
                if (parameter.isNamed)
                  //TODO: Don't add when optional, not nullable and arg is null.
                  parameter.name: code
                      .refer('args')
                      .index(code.literalNum(index))
                      .access(parameter.type)
            })
            .wrapped(method.returnType)
            .returned
            .statement,
    ));
  }

  return builder.build();
}

extension on DartType {
  code.Reference refer() {
    return code.refer(toString(), element?.library?.identifier);
  }

  code.Expression annotated() {
    var this$ = this;
    switch (this$) {
      case ParameterizedType():
        //TODO: Other tyes then core types.
        final name = getDisplayString(withNullability: false);
        return code
            .refer('CoreTypes', _dart_eval_bridge)
            .property('${name[0].toLowerCase()}${name.substring(1)}')
            .property('ref')
            .property(isNullable ? 'annotate' : 'annotateNullable');
    }
    throw UnimplementedError(
        "Can annotate $runtimeType. Only CoreTypes are currently supported.");
  }

  bool get isNullable {
    return nullabilitySuffix == NullabilitySuffix.question;
  }
}

extension on ExecutableElement {
  code.Expression methodDef() {
    return code.TypeReference((b) => b
      ..symbol = 'BridgeMethodDef'
      ..url = _dart_eval_bridge).newInstance([
      functionDef()
    ], {
      'isStatic': code.literalBool(isStatic) //TODO: Static methods
    });
  }

  code.Expression functionDef() {
    return code.TypeReference((b) => b
      ..symbol = 'BridgeFunctionDef'
      ..url = _dart_eval_bridge).newInstance([], {
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
}

extension on code.Expression {
  code.Expression nullCheckedOrSafeProperty(String name, bool safe) {
    return safe ? nullSafeProperty(name) : nullChecked.property(name);
  }

  code.Expression maybeNullSafeProperty(String name, bool safe) {
    return safe ? nullSafeProperty(name) : property(name);
  }

  /// Access this as [type].
  /// Will call $value or $reified when needed.
  code.Expression access(DartType type, [bool expressionIsNullable = true]) {
    return code.Method((b) => b
      ..body = code.Block.of([
        code.declareFinal(r'$').assign(this).statement,
        code.declareFinal(r'$$').assign(asA(code.refer('dynamic'))).statement,
        code
            .refer(r'$$')
            .isNotA(type.refer())
            .conditional(
                code
                    .refer(r'$')
                    .maybeNullSafeProperty(r'$reified', expressionIsNullable)
                    .asA(type.refer()),
                code.refer(r'$$'))
            .returned
            .statement,
      ])).closure.call([]);
  }

  /// Wraps this (has Type [type]) as a [$Value].
  code.Expression wrapped(DartType type) {
    code.Expression wrap(code.Expression inner) {
      if (type.isDartCoreString) {
        return code.refer(r'$String').newInstance([inner]);
      }

      //TODO: Impement wrapped
      return code.refer(r'$Object').newInstanceNamed('wrap', [inner]);
    }

    if (type.isNullable) {
      return code.Method((b) => b.body = code.Block.of([
            code.declareFinal(r'$').assign(this).statement,
            code
                .refer(r'$')
                .equalTo(code.literalNull)
                .conditional(_$null.constInstance([]), wrap(code.refer(r'$')))
                .returned
                .statement,
          ])).closure.call([]);
    } else {
      return wrap(this);
    }
  }
}

final _BridgeTypeSpec = code.TypeReference((b) => b
  ..symbol = 'BridgeTypeSpec'
  ..url = _dart_eval_bridge);
final _BridgeClassDef = code.TypeReference((b) => b
  ..symbol = 'BridgeClassDef'
  ..url = _dart_eval_bridge);
final _BridgeClassType = code.TypeReference((b) => b
  ..symbol = 'BridgeClassType'
  ..url = _dart_eval_bridge);
final _BridgeConstructorDef = code.TypeReference((b) => b
  ..symbol = 'BridgeConstructorDef'
  ..url = _dart_eval_bridge);
final _BridgeFieldDef = code.TypeReference((b) => b
  ..symbol = 'BridgeFieldDef'
  ..url = _dart_eval_bridge);

final _$Value = code.TypeReference((b) => b
  ..symbol = r'$Value'
  ..url = _dart_eval_bridge);
final _$value = code.refer(r'$value');
final _$null = code.refer(r'$null');

final _Runtime = code.TypeReference((b) => b
  ..symbol = r'Runtime'
  ..url = _dart_eval_bridge);
final _$Function = code.TypeReference((b) => b
  ..symbol = r'$Function'
  ..url = _dart_eval_bridge);
final _String = code.TypeReference((b) => b..symbol = r'String');
final _int = code.TypeReference((b) => b..symbol = r'int');

extension on code.TypeReference {
  code.TypeReference nullable(bool nullable) =>
      (toBuilder()..isNullable = nullable).build();
}
