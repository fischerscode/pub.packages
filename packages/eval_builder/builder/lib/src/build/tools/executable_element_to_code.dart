import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart' as code;

import 'dart_type_to_code.dart';
import '../settings.dart';
import '../well_known_type_references.dart';

extension ExecutableElementToCode on ExecutableElement {
  code.Expression methodDef(InterfaceElement self, WrapperSettings settings) {
    return code.TypeReference((b) => b
      ..symbol = 'BridgeMethodDef'
      ..url = WellKnownTypeReferences.dartEvalBridgePackage).newInstance(
        [functionDef(self, settings)],
        {'isStatic': code.literalBool(isStatic)});
  }

  code.Expression functionDef(InterfaceElement self, WrapperSettings settings) {
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
        for (var generic in typeParameters)
          generic.name: generic.bound?.refer() ?? code.literalNull,
      })
    });
  }
}
