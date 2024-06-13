import 'package:code_builder/code_builder.dart' as code;

class WellKnownTypeReferences {
  static const dartEvalBridgePackage =
      'package:dart_eval/dart_eval_bridge.dart';
  static final override = code.refer('override');

  static final bridgeTypeSpec = code.TypeReference((b) => b
    ..symbol = 'BridgeTypeSpec'
    ..url = dartEvalBridgePackage);
  static final bridgeClassDef = code.TypeReference((b) => b
    ..symbol = 'BridgeClassDef'
    ..url = dartEvalBridgePackage);
  static final bridgeClassType = code.TypeReference((b) => b
    ..symbol = 'BridgeClassType'
    ..url = dartEvalBridgePackage);
  static final bridgeConstructorDef = code.TypeReference((b) => b
    ..symbol = 'BridgeConstructorDef'
    ..url = dartEvalBridgePackage);
  static final bridgeFieldDef = code.TypeReference((b) => b
    ..symbol = 'BridgeFieldDef'
    ..url = dartEvalBridgePackage);

  static final runtime = code.TypeReference((b) => b
    ..symbol = r'Runtime'
    ..url = dartEvalBridgePackage);
  static final $Function = code.TypeReference((b) => b
    ..symbol = r'$Function'
    ..url = dartEvalBridgePackage);
  static final string = code.TypeReference((b) => b..symbol = r'String');
  static final int = code.TypeReference((b) => b..symbol = r'int');

  static final $null = code.refer(r'$null');
  static final $Value = code.TypeReference((b) => b
    ..symbol = r'$Value'
    ..url = dartEvalBridgePackage);
}
