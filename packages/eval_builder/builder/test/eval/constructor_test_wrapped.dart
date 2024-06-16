import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_extensions.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:eval_builder_annotations/annotations.dart';

part 'constructor_test_wrapped.g.dart';

@Wrapped()
class TestClass {
  TestClass(this.value);
  TestClass.from(this.value);
  TestClass.add(int a, int b) : value = a + b;
  factory TestClass.subtract(int a, int b) => TestClass(a - b);
  TestClass.positionalParameters(int base, [int? s1, int s2 = 2])
      : value = base - (s1 ?? 0) - s2;
  TestClass.namedParameters(
    int base, {
    int? s1,
    int s2 = 2,
    required int s3,
  }) : value = base - (s1 ?? 0) - s2 - s3;
  TestClass.nullableWithDefault(int base, {int? s = 5})
      : value = base - (s ?? 10);

  int value;
}
