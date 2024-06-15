import 'package:eval_builder/src/build/prefix_resolver.dart';
import 'package:eval_builder/src/build/wrapper.dart';
import 'package:eval_builder_annotations/annotations.dart';
import 'package:test/test.dart';

import '../analyzer.dart';
import '../matches_golden.dart';
import '../matches_spec.dart';
import 'utils.dart';

void main() {
  test('generation', () async {
    var resolved = await resolveLibraryFromFile(
        'typedef_wrapper_test_generation.dart', ['build']);

    expect(resolved, isNotNull);

    var element = resolved!.element.getClass('TypeDefTestClass');
    expect(element, isNotNull);
    expect(
        createPartFile('typedef_wrapper_test_generation.dart', [
          buildWrapper(
              element!,
              WrapperSettings(
                  bimodal: true,
                  name: r'$TypeDefTestClass',
                  libIdentifier: 'package:my_eval/types.dart',
                  defaultParameterStrategy: DefaultParameterStrategy.copyCode,
                  knownWrappers: {}))
        ]),
        specMatches(
            matchesGolden(
                'typedef_wrapper_test_generation.golden.dart', ['build']),
            PrefixResolver(element.library.prefixes)));
  });
}
