@Timeout.factor(2)

import 'package:eval_builder/src/build/prefix_resolver.dart';
import 'package:eval_builder/src/build/settings.dart';
import 'package:eval_builder/src/build/class_wrapper.dart';
import 'package:eval_builder/src/build/tools/discovery.dart';
import 'package:eval_builder_annotations/annotations.dart';
import 'package:test/test.dart';

import '../analyzer.dart';
import '../matches_golden.dart';
import '../matches_spec.dart';
import 'utils.dart';

void main() {
  test('generation', () async {
    var resolved = await resolveLibraryFromFile(
        'known_wrapper_test_generation.dart', ['build']);

    expect(resolved, isNotNull);

    var element = resolved!.element.getClass('ToWrap');
    var stubWrapper = resolved.element.getClass('CustomStubWrapper');
    expect(element, isNotNull);
    expect(stubWrapper, isNotNull);
    expect(
        createPartFile('known_wrapper_test_generation.dart', [
          ClassWrapperBuilder(
              element!,
              WrapperSettings(
                  bimodal: false,
                  name: r'$ToWrap',
                  libIdentifier: 'package:my_eval/types.dart',
                  defaultParameterStrategy: DefaultParameterStrategy.copyCode,
                  discoverer: WrapperDiscoverer(
                      knownWrappers: {
                        resolved.element.getClass('CustomWrapped')!.thisType: (
                          spec: (library: 'library', name: 'name'),
                          wrap: stubWrapper!.constructors.first,
                        )
                      },
                      typeSystem: resolved.element.typeSystem,
                      knownWrapped: {}))).build()
        ]),
        specMatches(
            matchesGolden(
                'known_wrapper_test_generation.golden.dart', ['build']),
            PrefixResolver(element.library.prefixes)));
  });
}
