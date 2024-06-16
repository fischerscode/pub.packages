import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/dart_eval_extensions.dart';
import 'package:eval_builder_annotations/annotations.dart';

part 'enum_wrapper_test_generation.golden.dart';

@Wrapped()
enum TestEnum {
  value1,
  value2;
}
