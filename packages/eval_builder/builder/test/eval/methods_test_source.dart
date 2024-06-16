import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_extensions.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:eval_builder_annotations/annotations.dart';

part 'methods_test_source.g.dart';

@Wrapped()
class TestClass {
  int add(int a, int b) {
    return a + b;
  }

  int positionalParameters(int base, [int? s1, int s2 = 2]) {
    return base - (s1 ?? 0) - s2;
  }

  int namedParameters(
    int base, {
    int? s1,
    int s2 = 2,
    required int s3,
  }) {
    return base - (s1 ?? 0) - s2 - s3;
  }

  int nullableWithDefault(int base, {int? s = 5}) {
    return base - (s ?? 10);
  }
}
