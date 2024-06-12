import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/dart_eval_extensions.dart';

part 'basic_wrapper_test_generation.golden.dart';

class BasicClass {
  BasicClass({required this.finalString, required this.finalNullableString});

  final String finalString;
  String string = 'default string';
  String _accessedString = 'default accessed string';
  String get stringGetter => _accessedString;
  set stringSetter(String value) => _accessedString = value;
  static final String staticFinalString = 'default static final string';
  static String staticString = 'default static string';
  static String _staticAccessedString = 'default accessed string';
  static String get staticStringGetter => _staticAccessedString;
  static set staticStringSetter(String value) => _staticAccessedString = value;

  final String? finalNullableString;
  String? nullableString;
  String? _accessedNullableString;
  String? get nullableStringGetter => _accessedNullableString;
  set nullableStringSetter(String? value) => _accessedNullableString = value;
  static final String? staticFinalNullableString = null;
  static String? staticNullableString;
  static String? _staticAccessedNullableString;
  static String? get staticNullableStringGetter =>
      _staticAccessedNullableString;
  static set staticNullableStringSetter(String? value) =>
      _staticAccessedNullableString = value;
}
