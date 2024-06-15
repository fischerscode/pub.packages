import 'package:eval_builder/src/build/prefix_resolver.dart';
import 'package:eval_builder/src/build/settings.dart';
import 'package:eval_builder/src/build/class_wrapper.dart';
import 'package:eval_builder_annotations/annotations.dart';
import 'package:test/test.dart';

import '../analyzer.dart';
import '../matches_golden.dart';
import '../matches_spec.dart';
import 'utils.dart';

void main() {
  test('non wrapper', () async {
    var resolved = await resolveLibraryFromFile(
        'abstract_wrapper_test_non_wrapped.dart', ['build']);

    expect(resolved, isNotNull);

    var element = resolved!.element.getClass('TestedClass');
    expect(element, isNotNull);
    expect(
        createPartFile('abstract_wrapper_test_non_wrapped.dart', [
          ClassWrapperBuilder(
              element!,
              WrapperSettings(
                  bimodal: true,
                  name: r'$TestedClass',
                  libIdentifier: 'package:my_eval/types.dart',
                  defaultParameterStrategy: DefaultParameterStrategy.copyCode,
                  knownWrappers: {})).build()
        ]),
        specMatches(
            matchesGolden(
                'abstract_wrapper_test_non_wrapped.golden.dart', ['build']),
            PrefixResolver(element.library.prefixes)));
  });
  test('wrapper', () async {
    var resolved = await resolveLibraryFromFile(
        'abstract_wrapper_test_wrapped.dart', ['build']);

    expect(resolved, isNotNull);

    var base = resolved!.element.getClass('BaseClass');
    var element = resolved.element.getClass('TestedClass');
    expect(base, isNotNull);
    expect(element, isNotNull);
    expect(
        createPartFile('abstract_wrapper_test_wrapped.dart', [
          ClassWrapperBuilder(
              base!,
              WrapperSettings(
                  bimodal: true,
                  name: r'$BaseClass',
                  libIdentifier: 'package:my_eval/types.dart',
                  defaultParameterStrategy: DefaultParameterStrategy.copyCode,
                  knownWrappers: {})).build(),
          ClassWrapperBuilder(
              element!,
              WrapperSettings(
                  bimodal: true,
                  name: r'$TestedClass',
                  libIdentifier: 'package:my_eval/types.dart',
                  defaultParameterStrategy: DefaultParameterStrategy.copyCode,
                  knownWrappers: {})).build(),
        ]),
        specMatches(
            matchesGolden(
                'abstract_wrapper_test_wrapped.golden.dart', ['build']),
            PrefixResolver(element.library.prefixes)));
  });
}
