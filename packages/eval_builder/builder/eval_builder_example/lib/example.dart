import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_extensions.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:eval_builder_annotations/annotations.dart';

part 'example.g.dart';

@Wrapper(bimodal: true)
class ExampleClass {
  ExampleClass.create(this.test);
  final String test;
}

@Wrapper(
  bimodal: false,
)
enum ExampleEnum {
  foo,
  bar,
}
