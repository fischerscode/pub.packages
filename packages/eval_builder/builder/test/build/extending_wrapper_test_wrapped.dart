import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_extensions.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:eval_builder_annotations/annotations.dart';

import 'discover_wrapper_test_generation.dart';

part 'extending_wrapper_test_wrapped.golden.dart';

@Wrapper()
class BaseClass {
  late final String propertyFromBase;
  void methodFromBase() => 'test';
}

class TestedClass extends BaseClass {
  late final String propertyFromClass;
  void methodFromClass() => 'test';
}
