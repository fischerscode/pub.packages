import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_extensions.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:eval_builder_annotations/annotations.dart';

part 'basic_test_wrapped.g.dart';

@Wrapped()
class TestClass {
  TestClass(this.value);

  int value;

  int get value2 => value;
  set value2(int newValue) => value = newValue;

  void add(int other) => value += other;
}
