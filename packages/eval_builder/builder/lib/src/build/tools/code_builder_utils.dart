import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:code_builder/code_builder.dart' as code;
import 'package:eval_builder/src/build/tools/generics.dart';

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
  code.Expression access(DartType type, bool required, code.Expression runtime,
      WrapperDiscoverer discoverer,
      [code.Expression? defaultExpression]) {
    if (!required && !type.isNullable && defaultExpression == null) {
      throw UnsupportedError(
          'Required non null parameters without a resolvable default '
          'are currently not supported.');
    }

    assert(!(required && defaultExpression != null),
        'Unexpected default for required parameter.');

    code.Expression reified;
    if (type is FunctionType) {
      reified = code.Method(
        (b) => b
          ..requiredParameters.addAll(type.parameters
              .where((p) => p.isRequiredPositional)
              .map((p) => code.Parameter((b) => b
                ..name = p.name
                ..type = p.type.refer()
                ..defaultTo = p.defaultValueCode?.asExpression().code)))
          ..optionalParameters.addAll(type.parameters
              .where((p) => !p.isRequiredPositional)
              .map((p) => code.Parameter((b) => b
                ..name = p.name
                ..named = p.isNamed
                ..required = p.isRequired
                ..type = p.type.refer()
                ..defaultTo = p.defaultValueCode?.asExpression().code)))
          ..types.addAll(type.typeFormals.map((e) => e.refer()))
          ..body = asA(WellKnownTypeReferences.evalCallable)
              .property(r'call')
              .call([
                runtime,
                code.literalNull,
                code.literalList([
                  for (var p in type.parameters)
                    p.name.asExpression().wrapped(p.type, runtime, discoverer)
                ])
              ])
              .maybeNullChecked(type.returnType is! VoidType)
              .access(type.returnType, type.returnType is! VoidType, runtime,
                  discoverer)
              .returned
              .statement,
      ).closure;
    } else {
      reified = code.refer(r'$').property(r'$reified');

      //TODO: All types with generics might need special treatment.
      if (type.isDartCoreList) {
        reified = reified
            .asA(WellKnownTypeReferences.list)
            .property('cast')
            .call([], {},
                [(type as ParameterizedType).typeArguments.first.refer()]);
      } else {
        reified = reified.asA(type.refer());
      }
    }

    var maybeUnpack = code
        .refer(r'$$')
        .isNotA(type.refer())
        .conditional(reified, code.refer(r'$$'));

    var maybeNull = type.isNullable
        ? code
            .refer(r'$$')
            .isA(WellKnownTypeReferences.$null)
            .conditional(code.literalNull, maybeUnpack)
        : maybeUnpack;

    var maybeWithDefault = !required
        ? code.refer(r'$').equalTo(code.literalNull).conditional(
            defaultExpression != null ? code.refer(r'$D') : code.literalNull,
            maybeNull)
        : maybeNull;

    return code.Method((b) => b
      ..requiredParameters.add(code.Parameter((b) => b
        ..name = r'$'
        ..type = WellKnownTypeReferences.$Value.nullable(!required)))
      ..body = code.Block.of([
        if (defaultExpression != null)
          code
              .declareConst(r'$D', type: type.refer())
              .assign(defaultExpression)
              .statement,
        code
            .declareFinal(r'$$')
            .assign(code.refer(r'$').asA(WellKnownTypeReferences.dynamic))
            .statement,
        maybeWithDefault.returned.statement,
      ])).closure.call([this]);
  }

  /// Wraps this (has Type [type]) as a [$Value].
  code.Expression wrapped(
      DartType type, code.Expression runtime, WrapperDiscoverer discoverer) {
    if (type is VoidType) {
      return code.Method((b) => b.body = code.Block.of([
            statement,
            code.literalNull.returned.statement,
          ])).closure.call([]);
    }

    switch (type) {
      case ParameterizedType():
        var discovery = discoverer.discover(type);

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
                                .access(
                                    parameter.type,
                                    parameter.isRequired,
                                    runtime,
                                    discoverer,
                                    parameter.defaultValueCode?.asExpression())
                      ], {
                        for (var (index, parameter) in type.parameters.indexed)
                          if (parameter.isNamed)
                            parameter.name: code
                                .refer('args')
                                .index(code.literalNum(index))
                                .maybeNullChecked(parameter.isRequired)
                                .access(
                                    parameter.type,
                                    parameter.isRequired,
                                    runtime,
                                    discoverer,
                                    parameter.defaultValueCode?.asExpression())
                      })
                      .wrapped(type.returnType, runtime, discoverer)
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
