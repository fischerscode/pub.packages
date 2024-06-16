import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_extensions.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:eval_builder_annotations/annotations.dart';

part 'static_test_wrapped.g.dart';

@Wrapped(libIdentifier: 'package:my_package/file.dart')
class TestClass {
  static int value = 0;

  static int get value2 => value;
  static set value2(int newValue) => value = newValue;

  static void add(int other) => value += other;
}
