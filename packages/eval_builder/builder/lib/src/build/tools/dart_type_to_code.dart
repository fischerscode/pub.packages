import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:eval_builder_annotations/annotations.dart';
import 'package:code_builder/code_builder.dart' as code;

import '../settings.dart';
import '../well_known_type_references.dart';
import 'discovery.dart';

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
            a.element!.enclosingElement!.name == '$Wrapped' &&
            a.element!.librarySource!.uri.toString() ==
                'package:eval_builder_annotations/annotations.dart')
        .firstOrNull;
  }

  code.Expression annotated(
      InterfaceElement self, KnownWrapperMap knownWrappers) {
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
          .property(isNullable ? 'annotateNullable' : 'annotate');
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
          ]).property(isNullable ? 'annotateNullable' : 'annotate');
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
