import 'package:analyzer/dart/element/element.dart';
import 'package:eval_builder/src/build/enum_wrapper.dart';
import 'package:eval_builder/src/build/prefix_resolver.dart';
import 'package:eval_builder/src/build/settings.dart';
import 'package:eval_builder_annotations/annotations.dart';
import 'package:test/test.dart';

import '../analyzer.dart';
import '../matches_golden.dart';
import '../matches_spec.dart';
import 'utils.dart';

void main() {
  test('generation', () async {
    var resolved = await resolveLibraryFromFile(
        'enum_wrapper_test_generation.dart', ['build']);

    expect(resolved, isNotNull);

    var element = resolved!.element.topLevelElements.firstWhere(
      (element) => element.name == 'TestEnum',
    );
    expect(element, isNotNull);
    expect(
        createPartFile('enum_wrapper_test_generation.dart', [
          EnumWrapperBuilder(
              element as EnumElement,
              WrapperSettings(
                  bimodal: false,
                  name: r'$TestEnum',
                  libIdentifier: 'package:my_eval/types.dart',
                  defaultParameterStrategy: DefaultParameterStrategy.copyCode,
                  knownWrappers: {})).build()
        ]),
        specMatches(
            matchesGolden(
                'enum_wrapper_test_generation.golden.dart', ['build']),
            PrefixResolver(element.library.prefixes)));
  });
}
