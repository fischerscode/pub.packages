import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:code_builder/code_builder.dart' as code;

import '../settings.dart';
import '../well_known_type_references.dart';
import 'dart_type_to_code.dart';
import 'discovery.dart';

extension ExpressionChaining on code.Expression {
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
  code.Expression access(DartType type, bool required,
      [code.Expression? defaultExpression]) {
    var maybeUnpack = code.refer(r'$$').isNotA(type.refer()).conditional(
        code.refer(r'$').property(r'$reified').asA(type.refer()),
        code.refer(r'$$'));

    var maybeNull = type.isNullable
        ? code
            .refer(r'$$')
            .isA(WellKnownTypeReferences.$null)
            .conditional(code.literalNull, maybeUnpack)
        : maybeUnpack;

    var maybeWithDefault = !required
        ? code
            .refer(r'$')
            .equalTo(code.literalNull)
            .conditional(defaultExpression ?? code.literalNull, maybeNull)
        : maybeNull;

    return code.Method((b) => b
      ..requiredParameters.add(code.Parameter((b) => b
        ..name = r'$'
        ..type = WellKnownTypeReferences.$Value.nullable(!required)))
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
                                .maybeNullChecked(parameter.isRequired)
                                .access(parameter.type, parameter.isRequired,
                                    parameter.defaultValueCode?.asExpression())
                      ], {
                        for (var (index, parameter) in type.parameters.indexed)
                          if (parameter.isNamed)
                            parameter.name: code
                                .refer('args')
                                .index(code.literalNum(index))
                                .maybeNullChecked(parameter.isRequired)
                                .access(parameter.type, parameter.isRequired,
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

extension ModifiableReference on code.TypeReference {
  code.TypeReference nullable(bool nullable) =>
      (toBuilder()..isNullable = nullable).build();
  code.TypeReference withGeneric(code.TypeReference generic) => (toBuilder()
        ..types.clear()
        ..types.add(generic))
      .build();
  code.TypeReference addGeneric(code.TypeReference generic) =>
      (toBuilder()..types.add(generic)).build();
}

extension MaybeNamedNewInstance on code.Reference {
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

extension CodeBuilderString on String {
  code.Code toCode() {
    return code.Code(this);
  }

  code.Expression asExpression() {
    return code.CodeExpression(toCode());
  }
}
