import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_extensions.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:eval_builder_annotations/annotations.dart';

part 'implementing_wrapper_test_wrapped.golden.dart';

@Wrapper()
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
