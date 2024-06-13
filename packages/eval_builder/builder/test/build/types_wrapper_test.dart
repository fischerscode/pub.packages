import 'dart:io';

import 'package:eval_builder/src/build/allocator.dart';
import 'package:eval_builder/src/build/wrapper.dart';
import 'package:eval_builder_annotations/annotations.dart';
import 'package:path/path.dart';
import 'package:test/test.dart';

import '../analyzer.dart';
import '../matches_golden.dart';
import '../matches_spec.dart';
import 'utils.dart';

void main() {
  test('generation', () async {
    var resolved = await resolveLibraryFromFile(
        'types_wrapper_test_generation.dart', ['build']);

    expect(resolved, isNotNull);

    var element = resolved!.element.getClass('TypesContainer');
    expect(element, isNotNull);
    expect(
        createPartFile('types_wrapper_test_generation.dart', [
          buildWrapper(
              element!,
              WrapperSettings(
                  bimodal: false,
                  defaultParameterStrategy: DefaultParameterStrategy.copyCode,
                  knownWrappers: {},
                  libIdentifier: 'package:my_eval/types.dart',
                  name: r'$TypesContainer'))
        ]),
        specMatches(
            matchesGolden(
                'types_wrapper_test_generation.golden.dart', ['build']),
            await _createAllocator('types_wrapper_test_generation.dart')));
  });
}

_createAllocator(String filename) async {
  var file = File(join('test', 'build', filename));
  return PrefixAllocator.from(
      await file.readAsString(), file.absolute.parent.uri);
}
