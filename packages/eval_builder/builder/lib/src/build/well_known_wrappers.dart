import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:code_builder/code_builder.dart';
import 'package:eval_builder/src/build/known_wrapper.dart';
import 'package:eval_builder/src/build/well_known_type_references.dart';

class WellKnownWrapper extends KnownWrapper {
  static final $Completer = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Completer.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Completer,
      'Completer',
      'dart:async');
  static final $Stream = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Stream.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Stream,
      'Stream',
      'dart:async');
  static final $StreamController = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$StreamController
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$StreamController,
      'StreamController',
      'dart:async');
  static final $StreamSink = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$StreamSink.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$StreamSink,
      'StreamSink',
      'dart:async');
  static final $StreamSubscription = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$StreamSubscription
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$StreamSubscription,
      'StreamSubscription',
      'dart:async');
  static final $StreamTransformer = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$StreamTransformer
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$StreamTransformer,
      'StreamTransformer',
      'dart:async');
  static final $StreamView = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$StreamView.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$StreamView,
      'StreamView',
      'dart:async');

  static final $LinkedHashMap = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$LinkedHashMap
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$LinkedHashMap,
      'LinkedHashMap',
      'dart:collection');

  static final $Codec = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Codec.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Codec,
      'Codec',
      'dart:convert');
  static final $Converter = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Converter.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Converter,
      'Converter',
      'dart:convert');
  static final $Encoding = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Encoding.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Encoding,
      'Encoding',
      'dart:convert');
  static final $JsonCodec = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$JsonCodec.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$JsonCodec,
      'JsonCodec',
      'dart:convert');
  static final $JsonDecoder = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$JsonDecoder
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$JsonDecoder,
      'JsonDecoder',
      'dart:convert');
  static final $JsonEncoder = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$JsonEncoder
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$JsonEncoder,
      'JsonEncoder',
      'dart:convert');
  static final $Utf8Codec = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Utf8Codec.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Utf8Codec,
      'Utf8Codec',
      'dart:convert');
  static final $Utf8Decoder = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$Utf8Decoder
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Utf8Decoder,
      'Utf8Decoder',
      'dart:convert');

  static final $ArgumentError = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$ArgumentError
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$ArgumentError,
      'ArgumentError',
      'dart:core');
  static final $AssertionError = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$AssertionError
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$AssertionError,
      'AssertionError',
      'dart:core');
  static final $bool = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$bool.newInstance([inner]),
      WellKnownTypeReferences.$bool,
      'bool',
      'dart:core');
  static final $Comparable = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Comparable.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Comparable,
      'Comparable',
      'dart:core');
  static final $DateTime = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$DateTime.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$DateTime,
      'DateTime',
      'dart:core');
  static final $double = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$double.newInstance([inner]),
      WellKnownTypeReferences.$double,
      'double',
      'dart:core');
  static final $Duration = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Duration.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Duration,
      'Duration',
      'dart:core');
  static final $Error = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Error.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Error,
      'Error',
      'dart:core');
  static final $Exception = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Exception.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Exception,
      'Exception',
      'dart:core');
  static final $FormatException = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$FormatException
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$FormatException,
      'FormatException',
      'dart:core');
  static final $Future = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Future.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Future,
      'Future',
      'dart:core',
      'dart:async');
  static final $int = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$int.newInstance([inner]),
      WellKnownTypeReferences.$int,
      'int',
      'dart:core');
  static final $Iterable = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Iterable.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Iterable,
      'Iterable',
      'dart:core');
  static final $List = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$List.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$List,
      'List',
      'dart:core');
  static final $Map = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$Map.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Map,
      'Map',
      'dart:core');
  static final $MapEntry = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$MapEntry.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$MapEntry,
      'MapEntry',
      'dart:core');
  static final $Match = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Match.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Match,
      'Match',
      'dart:core');
  static final $num = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$num.newInstance([inner]),
      WellKnownTypeReferences.$num,
      'num',
      'dart:core');
  static final $Object = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$Object.newInstance([inner]),
      WellKnownTypeReferences.$Object,
      'Object',
      'dart:core');
  static final $Pattern = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Pattern.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Pattern,
      'Pattern',
      'dart:core');
  static final $RangeError = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$RangeError.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$RangeError,
      'RangeError',
      'dart:core');
  static final $RegExp = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$RegExp.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$RegExp,
      'RegExp',
      'dart:core');
  static final $RegExpMatch = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$RegExpMatch
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$RegExpMatch,
      'RegExpMatch',
      'dart:core');
  static final $StackTrace = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$StackTrace.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$StackTrace,
      'StackTrace',
      'dart:core');
  static final $StateError = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$StateError.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$StateError,
      'StateError',
      'dart:core');
  static final $String = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$String.newInstance([inner]),
      WellKnownTypeReferences.$String,
      'String',
      'dart:core');
  static final $StringBuffer = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$StringBuffer
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$StringBuffer,
      'StringBuffer',
      'dart:core');
  static final $UnimplementedError = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$UnimplementedError
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$UnimplementedError,
      'UnimplementedError',
      'dart:core');
  static final $UnsupportedError = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$UnsupportedError
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$UnsupportedError,
      'UnsupportedError',
      'dart:core');
  static final $Uri = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$Uri.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Uri,
      'Uri',
      'dart:core');

  static final $Directory = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Directory.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Directory,
      'Directory',
      'dart:io');
  static final $File = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$File.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$File,
      'File',
      'dart:io');
  static final $FileSystemEntity = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$FileSystemEntity
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$FileSystemEntity,
      'FileSystemEntity',
      'dart:io');
  static final $HttpClient = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$HttpClient.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$HttpClient,
      'HttpClient',
      'dart:io',
      'dart:_http');
  static final $HttpClientRequest = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$HttpClientRequest
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$HttpClientRequest,
      'HttpClientRequest',
      'dart:io',
      'dart:_http');
  static final $HttpClientResponse = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$HttpClientResponse
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$HttpClientResponse,
      'HttpClientResponse',
      'dart:io',
      'dart:_http');
  static final $InternetAddress = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$InternetAddress
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$InternetAddress,
      'InternetAddress',
      'dart:io');
  static final $InternetAddressType = WellKnownWrapper._(
      (inner) => WellKnownTypeReferences.$InternetAddressType
          .newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$InternetAddressType,
      'InternetAddressType',
      'dart:io');
  static final $IOSink = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$IOSink.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$IOSink,
      'IOSink',
      'dart:io');
  static final $StringSink = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$StringSink.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$StringSink,
      'StringSink',
      'dart:io',
      'dart:core');

  static final $Point = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Point.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Point,
      'Point',
      'dart:math');

  static final $ByteBuffer = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$ByteBuffer.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$ByteBuffer,
      'ByteBuffer',
      'dart:typed_data');
  static final $ByteData = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$ByteData.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$ByteData,
      'ByteData',
      'dart:typed_data');
  static final $TypedData = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$TypedData.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$TypedData,
      'TypedData',
      'dart:typed_data');
  static final $Uint8List = WellKnownWrapper._(
      (inner) =>
          WellKnownTypeReferences.$Uint8List.newInstanceNamed('wrap', [inner]),
      WellKnownTypeReferences.$Uint8List,
      'Uint8List',
      'dart:typed_data');

  const WellKnownWrapper._(super.wrap, this.typeReference,
      this.wrappedTypeSymbol, this.wrappedTypeOwner,
      [this.wrappedTypeActualDartOwner]);

  final TypeReference typeReference;

  final String wrappedTypeSymbol;
  final String wrappedTypeOwner;
  final String? wrappedTypeActualDartOwner;

  static WellKnownWrapper? get(TypeParameterizedElement element) {
    final symbol = element.name;
    final owner = element.librarySource.uri.toString();

    var wrapper = [
      $Completer,
      $Stream,
      $StreamController,
      $StreamSink,
      $StreamSubscription,
      $StreamTransformer,
      $StreamView,
      $LinkedHashMap,
      $Codec,
      $Converter,
      $Encoding,
      $JsonCodec,
      $JsonDecoder,
      $JsonEncoder,
      $Utf8Codec,
      $Utf8Decoder,
      $ArgumentError,
      $AssertionError,
      $bool,
      $Comparable,
      $DateTime,
      $double,
      $Duration,
      $Error,
      $Exception,
      $FormatException,
      $Future,
      $int,
      $Iterable,
      $List,
      $Map,
      $MapEntry,
      $Match,
      $num,
      $Object,
      $Pattern,
      $RangeError,
      $RegExp,
      $RegExpMatch,
      $StackTrace,
      $StateError,
      $String,
      $StringBuffer,
      $UnimplementedError,
      $UnsupportedError,
      $Uri,
      $Directory,
      $File,
      $FileSystemEntity,
      $HttpClient,
      $HttpClientRequest,
      $HttpClientResponse,
      $InternetAddress,
      $InternetAddressType,
      $IOSink,
      $StringSink,
      $Point,
      $ByteBuffer,
      $ByteData,
      $TypedData,
      $Uint8List,
    ]
        .where((element) =>
            symbol == element.wrappedTypeSymbol &&
            owner ==
                (element.wrappedTypeActualDartOwner ??
                    element.wrappedTypeOwner))
        .firstOrNull;

    return wrapper;
  }
}
