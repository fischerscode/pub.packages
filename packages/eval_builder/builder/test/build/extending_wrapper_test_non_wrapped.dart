import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_extensions.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:eval_builder/src/build/well_known_type_references.dart';
import 'package:eval_builder/src/build/well_known_wrappers.dart';

part 'extending_wrapper_test_non_wrapped.golden.dart';

class BaseClass {
  late final String propertyFromBase;
  void methodFromBase() => 'test';
}

class TestedClass extends BaseClass {
  late final String propertyFromClass;
  void methodFromClass() => 'test';
}
