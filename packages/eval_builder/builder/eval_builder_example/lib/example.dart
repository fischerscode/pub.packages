import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_extensions.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:eval_builder_annotations/annotations.dart';
import 'package:eval_builder_example/src/external.dart' as e;

part 'example.g.dart';

@Wrapped(bimodal: true)
class ExampleClass {
  ExampleClass.create(this.test);
  final String test;
}

@Wrapped(
  bimodal: false,
)
enum ExampleEnum {
  foo,
  bar,
}

@Wrapped()
// ignore: unused_element
typedef _WrapThis = e.ExternalClass;
