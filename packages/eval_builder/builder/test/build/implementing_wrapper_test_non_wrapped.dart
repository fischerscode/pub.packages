import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_extensions.dart';
import 'package:dart_eval/stdlib/core.dart';

part 'implementing_wrapper_test_non_wrapped.golden.dart';

class BaseClass {
  late final String propertyFromBase;
  String methodFromBase() => 'test';
}

class TestedClass implements BaseClass {
  late final String propertyFromClass;
  String methodFromClass() => 'test';

  @override
  late String propertyFromBase;

  @override
  String methodFromBase() {
    throw UnimplementedError();
  }
}
