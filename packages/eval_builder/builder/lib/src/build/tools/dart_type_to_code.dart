import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:eval_builder/src/build/tools/generics.dart';
import 'package:eval_builder_annotations/annotations.dart';
import 'package:code_builder/code_builder.dart' as code;

import '../settings.dart';
import '../well_known_type_references.dart';
import 'discovery.dart';

extension DartTypeToCode on DartType {
  DartType? get nullIfObject {
    return isDartCoreObject ? null : this;
  }

  /// Get the [BridgeTypeRef] [code.Expression] of this type.
  code.Expression ref(InterfaceElement self, KnownWrapperMap knownWrappers) {
    var this$ = this;
    switch (this$) {
      case ParameterizedType():
        var discovery = WrapperDiscovery.discover(
            this$.element as TypeParameterizedElement, knownWrappers, this$);

        if (discovery != null) {
          return discovery.ref(self, knownWrappers);
        }

        throw UnimplementedError(
            "Unknown BridgeTypeSpec for wrapper of ${getDisplayString()}.");
      case FunctionType():
        return WellKnownTypeReferences.bridgeTypeRef
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
            'generics': code.literalConstMap({
              for (var generic in this$.typeFormals)
                generic.name:
                    WellKnownTypeReferences.bridgeGenericParam.newInstance([], {
                  r'$extends': generic.bound?.refer() ?? code.literalNull,
                })
            })
          }),
        ]);

      case TypeParameterType():
        return WellKnownTypeReferences.bridgeTypeRef
            .newInstanceNamed('ref', [code.literalString(this$.element.name)]);
      case DynamicType():
        return WellKnownTypeReferences.bridgeTypeRef.newInstance([
          WellKnownTypeReferences.bridgeTypeSpec.newInstance([
            code.literalString(WellKnownTypeReferences.dynamic.url!),
            code.literalString(WellKnownTypeReferences.dynamic.symbol)
          ])
        ]);
    }
    throw UnimplementedError(
        "Can not build BridgeFunctionDef for ${getDisplayString()}. "
        "Only ParameterizedTypes, FunctionTypes, TypeParameterType and dynamic "
        "are currently supported.");
  }

  /// Refer to this type as a symbol
  code.Reference refer() {
    final this$ = this;
    switch (this$) {
      case VoidType():
        return code.TypeReference((b) => b
          ..symbol = 'void'
          ..url = 'dart:core');
      case ParameterizedType():
        return code.TypeReference((b) => b
          ..symbol = element!.name
          ..isNullable = isNullable
          ..url = '_library_with_element:${element!.id}'
          ..types.addAll(this$.typeArguments.map((e) => e.refer())));
      case FunctionType():
        return code.FunctionType((b) => b
          ..isNullable = isNullable
          ..returnType = this$.returnType.refer()
          ..requiredParameters.addAll([
            for (var parameter in this$.parameters)
              if (parameter.isRequiredPositional) parameter.type.refer()
          ])
          ..optionalParameters.addAll([
            for (var parameter in this$.parameters)
              if (parameter.isOptionalPositional) parameter.type.refer()
          ])
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
          ..types.addAll(this$.typeFormals.map((e) => e.refer())));
      case DynamicType():
        return WellKnownTypeReferences.dynamic;
      case TypeParameterType():
        return code.TypeReference((b) =>
            b.symbol = this$.getDisplayString().replaceAll(RegExp(r'\?$'), ''));
    }
    throw UnimplementedError(
        "Can not refer to ${getDisplayString()}. Only ParameterizedTypes, "
        "FunctionType, TypeParameterType, void and dynamic are currently "
        "supported.");
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

    return WellKnownTypeReferences.bridgeTypeAnnotation.newInstance([
      ref(self, knownWrappers),
    ], {
      'nullable': code.literalBool(isNullable)
    });
  }

  bool get isNullable {
    return nullabilitySuffix == NullabilitySuffix.question;
  }
}
