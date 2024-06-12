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
        'basic_wrapper_test_generation.dart', ['build']);

    expect(resolved, isNotNull);

    var element = resolved!.element.getClass('BasicClass');
    expect(element, isNotNull);
    expect(
        createPartFile('basic_wrapper_test_generation.dart',
            [buildWrapper(element!, Wrapper(bimodal: false))]),
        specMatches(
            matchesGolden(
                'basic_wrapper_test_generation.golden.dart', ['build']),
            await _createAllocator('basic_wrapper_test_generation.dart')));
  });
}

_createAllocator(String filename) async {
  var file = File(join('test', 'build', filename));
  return PrefixAllocator.from(
      await file.readAsString(), file.absolute.parent.uri);
}
