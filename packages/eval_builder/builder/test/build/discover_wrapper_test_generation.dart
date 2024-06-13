import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_extensions.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:eval_builder_annotations/annotations.dart';

part 'discover_wrapper_test_generation.golden.dart';

@Wrapper(name: 'WrapWrapped1')
class Wrapped1 {}

@Wrapper()
class Wrapped2 {}

@Wrapper()
class Parent {
  late Wrapped1 child1;
  late Wrapped1? child1Nullable;
  late Wrapped2 child2;
  late Wrapped2? child2Nullable;
}
