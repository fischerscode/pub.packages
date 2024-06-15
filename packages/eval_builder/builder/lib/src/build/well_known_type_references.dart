import 'package:code_builder/code_builder.dart' as code;

class WellKnownTypeReferences {
  static const dartEvalBridgePackage =
      'package:dart_eval/dart_eval_bridge.dart';
  static const dartEvalStdLibAsyncPackage =
      'package:dart_eval/stdlib/async.dart';
  static const dartEvalStdLibCorePackage = 'package:dart_eval/stdlib/core.dart';
  static const dartEvalStdLibCollectionPackage =
      'package:dart_eval/stdlib/collection.dart';
  static const dartEvalStdLibIOPackage = 'package:dart_eval/stdlib/io.dart';
  static const dartEvalStdLibConvertPackage =
      'package:dart_eval/stdlib/convert.dart';
  static const dartEvalStdLibMathPackage = 'package:dart_eval/stdlib/math.dart';
  static const dartEvalStdLibTypedDataPackage =
      'package:dart_eval/stdlib/typed_data.dart';

  static final override = code.TypeReference((b) => b
    ..symbol = r'override'
    ..url = 'dart:core');
  static final list = code.TypeReference((b) => b
    ..symbol = r'List'
    ..url = 'dart:core'
    ..types.add(dynamic));
  static final string = code.TypeReference((b) => b
    ..symbol = r'String'
    ..url = 'dart:core');
  static final int = code.TypeReference((b) => b
    ..symbol = r'int'
    ..url = 'dart:core');
  static final dynamic = code.TypeReference((b) => b
    ..symbol = r'dynamic'
    ..url = 'dart:core');

  static final coreTypes = code.TypeReference((b) => b
    ..symbol = 'CoreTypes'
    ..url = dartEvalBridgePackage);
  static final bridgeTypeSpec = code.TypeReference((b) => b
    ..symbol = 'BridgeTypeSpec'
    ..url = dartEvalBridgePackage);
  static final bridgeTypeRef = code.TypeReference((b) => b
    ..symbol = 'BridgeTypeRef'
    ..url = dartEvalBridgePackage);
  static final bridgeClassDef = code.TypeReference((b) => b
    ..symbol = 'BridgeClassDef'
    ..url = dartEvalBridgePackage);
  static final bridgeEnumDef = code.TypeReference((b) => b
    ..symbol = 'BridgeEnumDef'
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
  static final bridgeFunctionDef = code.TypeReference((b) => b
    ..symbol = 'BridgeFunctionDef'
    ..url = dartEvalBridgePackage);
  static final bridgeFunctionSpec = code.TypeReference((b) => b
    ..symbol = 'BridgeFunctionSpec'
    ..url = dartEvalBridgePackage);
  static final bridgeParameter = code.TypeReference((b) => b
    ..symbol = 'BridgeParameter'
    ..url = dartEvalBridgePackage);
  static final bridgeTypeAnnotation = code.TypeReference((b) => b
    ..symbol = 'BridgeTypeAnnotation'
    ..url = dartEvalBridgePackage);

  static final runtime = code.TypeReference((b) => b
    ..symbol = r'Runtime'
    ..url = dartEvalBridgePackage);
  static final $Function = code.TypeReference((b) => b
    ..symbol = r'$Function'
    ..url = dartEvalBridgePackage);
  static final $Instance = code.TypeReference((b) => b
    ..symbol = r'$Instance'
    ..url = dartEvalBridgePackage);

  static final $Value = code.TypeReference((b) => b
    ..symbol = r'$Value'
    ..url = dartEvalBridgePackage);

  // stdlib/async.dart
  static final $Completer = code.TypeReference((b) => b
    ..symbol = r'$Completer'
    ..url = dartEvalStdLibAsyncPackage);
  static final $Stream = code.TypeReference((b) => b
    ..symbol = r'$Stream'
    ..url = dartEvalStdLibAsyncPackage);
  static final $StreamController = code.TypeReference((b) => b
    ..symbol = r'$StreamController'
    ..url = dartEvalStdLibAsyncPackage);
  static final $StreamSink = code.TypeReference((b) => b
    ..symbol = r'$StreamSink'
    ..url = dartEvalStdLibAsyncPackage);
  static final $StreamSubscription = code.TypeReference((b) => b
    ..symbol = r'$StreamSubscription'
    ..url = dartEvalStdLibAsyncPackage);
  static final $StreamTransformer = code.TypeReference((b) => b
    ..symbol = r'$StreamTransformer'
    ..url = dartEvalStdLibAsyncPackage);
  static final $StreamView = code.TypeReference((b) => b
    ..symbol = r'$StreamView'
    ..url = dartEvalStdLibAsyncPackage);

  // stdlib/collection.dart
  static final $LinkedHashMap = code.TypeReference((b) => b
    ..symbol = r'$LinkedHashMap'
    ..url = dartEvalStdLibCollectionPackage);

  // stdlib/convert.dart
  static final $Codec = code.TypeReference((b) => b
    ..symbol = r'$Codec'
    ..url = dartEvalStdLibConvertPackage);
  static final $Converter = code.TypeReference((b) => b
    ..symbol = r'$Converter'
    ..url = dartEvalStdLibConvertPackage);
  static final $Encoding = code.TypeReference((b) => b
    ..symbol = r'$Encoding'
    ..url = dartEvalStdLibConvertPackage);
  static final $JsonCodec = code.TypeReference((b) => b
    ..symbol = r'$JsonCodec'
    ..url = dartEvalStdLibConvertPackage);
  static final $JsonDecoder = code.TypeReference((b) => b
    ..symbol = r'$JsonDecoder'
    ..url = dartEvalStdLibConvertPackage);
  static final $JsonEncoder = code.TypeReference((b) => b
    ..symbol = r'$JsonEncoder'
    ..url = dartEvalStdLibConvertPackage);
  static final $Utf8Codec = code.TypeReference((b) => b
    ..symbol = r'$Utf8Codec'
    ..url = dartEvalStdLibConvertPackage);
  static final $Utf8Decoder = code.TypeReference((b) => b
    ..symbol = r'$Utf8Decoder'
    ..url = dartEvalStdLibConvertPackage);

  // stdlib/core.dart
  static final $ArgumentError = code.TypeReference((b) => b
    ..symbol = r'$ArgumentError'
    ..url = dartEvalStdLibCorePackage);
  static final $AssertionError = code.TypeReference((b) => b
    ..symbol = r'$AssertionError'
    ..url = dartEvalStdLibCorePackage);
  static final $bool = code.TypeReference((b) => b
    ..symbol = r'$bool'
    ..url = dartEvalStdLibCorePackage);
  static final $Comparable = code.TypeReference((b) => b
    ..symbol = r'$Comparable'
    ..url = dartEvalStdLibCorePackage
    ..types.add(dynamic));
  static final $DateTime = code.TypeReference((b) => b
    ..symbol = r'$DateTime'
    ..url = dartEvalStdLibCorePackage);
  static final $double = code.TypeReference((b) => b
    ..symbol = r'$double'
    ..url = dartEvalStdLibCorePackage);
  static final $Duration = code.TypeReference((b) => b
    ..symbol = r'$Duration'
    ..url = dartEvalStdLibCorePackage);
  static final $Error = code.TypeReference((b) => b
    ..symbol = r'$Error'
    ..url = dartEvalStdLibCorePackage);
  static final $Exception = code.TypeReference((b) => b
    ..symbol = r'$Exception'
    ..url = dartEvalStdLibCorePackage);
  static final $FormatException = code.TypeReference((b) => b
    ..symbol = r'$FormatException'
    ..url = dartEvalStdLibCorePackage);
  static final $Future = code.TypeReference((b) => b
    ..symbol = r'$Future'
    ..url = dartEvalStdLibCorePackage
    ..types.add(dynamic));
  static final $int = code.TypeReference((b) => b
    ..symbol = r'$int'
    ..url = dartEvalStdLibCorePackage);
  static final $Iterable = code.TypeReference((b) => b
    ..symbol = r'$Iterable'
    ..url = dartEvalStdLibCorePackage);
  static final $List = code.TypeReference((b) => b
    ..symbol = r'$List'
    ..url = dartEvalStdLibCorePackage);
  static final $Map = code.TypeReference((b) => b
    ..symbol = r'$Map'
    ..url = dartEvalStdLibCorePackage);
  static final $MapEntry = code.TypeReference((b) => b
    ..symbol = r'$MapEntry'
    ..url = dartEvalStdLibCorePackage);
  static final $Match = code.TypeReference((b) => b
    ..symbol = r'$Match'
    ..url = dartEvalStdLibCorePackage);
  static final $null = code.TypeReference((b) => b
    ..symbol = r'$null'
    ..url = dartEvalStdLibCorePackage);
  static final $num = code.TypeReference((b) => b
    ..symbol = r'$num'
    ..url = dartEvalStdLibCorePackage);
  static final $Object = code.TypeReference((b) => b
    ..symbol = r'$Object'
    ..url = dartEvalStdLibCorePackage);
  static final $Pattern = code.TypeReference((b) => b
    ..symbol = r'$Pattern'
    ..url = dartEvalStdLibCorePackage);
  static final $RangeError = code.TypeReference((b) => b
    ..symbol = r'$RangeError'
    ..url = dartEvalStdLibCorePackage);
  static final $RegExp = code.TypeReference((b) => b
    ..symbol = r'$RegExp'
    ..url = dartEvalStdLibCorePackage);
  static final $RegExpMatch = code.TypeReference((b) => b
    ..symbol = r'$RegExpMatch'
    ..url = dartEvalStdLibCorePackage);
  static final $StackTrace = code.TypeReference((b) => b
    ..symbol = r'$StackTrace'
    ..url = dartEvalStdLibCorePackage);
  static final $StateError = code.TypeReference((b) => b
    ..symbol = r'$StateError'
    ..url = dartEvalStdLibCorePackage);
  static final $String = code.TypeReference((b) => b
    ..symbol = r'$String'
    ..url = dartEvalStdLibCorePackage);
  static final $StringBuffer = code.TypeReference((b) => b
    ..symbol = r'$StringBuffer'
    ..url = dartEvalStdLibCorePackage);
  static final $UnimplementedError = code.TypeReference((b) => b
    ..symbol = r'$UnimplementedError'
    ..url = dartEvalStdLibCorePackage);
  static final $UnsupportedError = code.TypeReference((b) => b
    ..symbol = r'$UnsupportedError'
    ..url = dartEvalStdLibCorePackage);
  static final $Uri = code.TypeReference((b) => b
    ..symbol = r'$Uri'
    ..url = dartEvalStdLibCorePackage);

  // stdlib/io.dart
  static final $Directory = code.TypeReference((b) => b
    ..symbol = r'$Directory'
    ..url = dartEvalStdLibIOPackage);
  static final $File = code.TypeReference((b) => b
    ..symbol = r'$File'
    ..url = dartEvalStdLibIOPackage);
  static final $FileSystemEntity = code.TypeReference((b) => b
    ..symbol = r'$FileSystemEntity'
    ..url = dartEvalStdLibIOPackage);
  static final $HttpClient = code.TypeReference((b) => b
    ..symbol = r'$HttpClient'
    ..url = dartEvalStdLibIOPackage);
  static final $HttpClientRequest = code.TypeReference((b) => b
    ..symbol = r'$HttpClientRequest'
    ..url = dartEvalStdLibIOPackage);
  static final $HttpClientResponse = code.TypeReference((b) => b
    ..symbol = r'$HttpClientResponse'
    ..url = dartEvalStdLibIOPackage);
  static final $InternetAddress = code.TypeReference((b) => b
    ..symbol = r'$InternetAddress'
    ..url = dartEvalStdLibIOPackage);
  static final $InternetAddressType = code.TypeReference((b) => b
    ..symbol = r'$InternetAddressType'
    ..url = dartEvalStdLibIOPackage);
  static final $IOSink = code.TypeReference((b) => b
    ..symbol = r'$IOSink'
    ..url = dartEvalStdLibIOPackage);
  static final $StringSink = code.TypeReference((b) => b
    ..symbol = r'$StringSink'
    ..url = dartEvalStdLibIOPackage);

  // stdlib/math.dart
  static final $Point = code.TypeReference((b) => b
    ..symbol = r'$Point'
    ..url = dartEvalStdLibMathPackage);

  // stdlib/typed_data.dart
  static final $ByteBuffer = code.TypeReference((b) => b
    ..symbol = r'$ByteBuffer'
    ..url = dartEvalStdLibTypedDataPackage);
  static final $ByteData = code.TypeReference((b) => b
    ..symbol = r'$ByteData'
    ..url = dartEvalStdLibTypedDataPackage);
  static final $TypedData = code.TypeReference((b) => b
    ..symbol = r'$TypedData'
    ..url = dartEvalStdLibTypedDataPackage);
  static final $Uint8List = code.TypeReference((b) => b
    ..symbol = r'$Uint8List'
    ..url = dartEvalStdLibTypedDataPackage);
}
