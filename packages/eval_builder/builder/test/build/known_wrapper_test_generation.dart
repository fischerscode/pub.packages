import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_extensions.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:eval_builder_annotations/annotations.dart';

part 'known_wrapper_test_generation.golden.dart';

abstract class CustomStubWrapper implements $Instance {
  static const spec = BridgeTypeSpec('library', 'name');

  factory CustomStubWrapper.wrap(CustomWrapped wrapped) =>
      throw UnimplementedError();
}

class CustomWrapped {}

@Wrapper(knownWrappers: {
  CustomWrapped: (ref: CustomStubWrapper.spec, wrap: CustomStubWrapper.wrap)
})
class ToWrap {
  late CustomWrapped child;
  late CustomWrapped? childNullable;
}
