import 'package:eval_builder/src/build/prefix_resolver.dart';
import 'package:eval_builder/src/build/settings.dart';
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
        'discover_wrapper_test_generation.dart', ['build']);

    expect(resolved, isNotNull);

    var wrapped1 = resolved!.element.getClass('Wrapped1');
    var wrapped2 = resolved.element.getClass('Wrapped2');
    var parent = resolved.element.getClass('Parent');
    expect(wrapped1, isNotNull);
    expect(wrapped2, isNotNull);
    expect(
        createPartFile('discover_wrapper_test_generation.dart', [
          buildWrapper(
              wrapped1!,
              WrapperSettings(
                  bimodal: false,
                  name: r'WrapWrapped1',
                  libIdentifier: 'package:my_eval/types.dart',
                  defaultParameterStrategy: DefaultParameterStrategy.copyCode,
                  knownWrappers: {})),
          buildWrapper(
              wrapped2!,
              WrapperSettings(
                  bimodal: false,
                  name: r'$Wrapped2',
                  libIdentifier: 'package:my_eval/types.dart',
                  defaultParameterStrategy: DefaultParameterStrategy.copyCode,
                  knownWrappers: {})),
          buildWrapper(
              parent!,
              WrapperSettings(
                  bimodal: false,
                  name: r'$Parent',
                  libIdentifier: 'package:my_eval/types.dart',
                  defaultParameterStrategy: DefaultParameterStrategy.copyCode,
                  knownWrappers: {})),
        ]),
        specMatches(
            matchesGolden(
                'discover_wrapper_test_generation.golden.dart', ['build']),
            PrefixResolver(resolved.element.prefixes)));
  });
}
