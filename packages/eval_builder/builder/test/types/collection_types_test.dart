import 'package:code_builder/code_builder.dart';
import 'package:eval_builder/src/types/collection_types.dart';
import 'package:test/test.dart';

import '../matches_spec.dart';

void main() {
  group('wrap', () {
    test('LinkedHashMap', () {
      expect(CollectionType.linkedHashMap.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$LinkedHashMap.wrap(inner)'));
    });
  });
}
