import 'package:code_builder/code_builder.dart';
import 'package:eval_builder/src/types/core_types.dart';
import 'package:test/test.dart';

import '../matches_spec.dart';

void main() {
  group('wrap', () {
    test('bool', () {
      expect(CoreType.bool.wrap(CodeExpression(Code('true'))),
          specMatches(r'$bool(true)'));
    });
    test('Comparable', () {
      expect(CoreType.comparable.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$Comparable.wrap(inner)'));
    });
    test('DateTime', () {
      expect(CoreType.dateTime.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$DateTime.wrap(inner)'));
    });
    test('double', () {
      expect(CoreType.double.wrap(CodeExpression(Code('1.23'))),
          specMatches(r'$double(1.23)'));
    });
    test('Duration', () {
      expect(CoreType.duration.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$Duration.wrap(inner)'));
    });
    test('Future', () {
      expect(CoreType.future.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$Future.wrap(inner)'));
    });
    test('int', () {
      expect(CoreType.int.wrap(CodeExpression(Code('123'))),
          specMatches(r'$int(123)'));
    });
    test('Iterable', () {
      expect(CoreType.iterable.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$Iterable.wrap(inner)'));
    });
    test('List', () {
      expect(CoreType.list.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$List.wrap(inner)'));
    });
    test('Map', () {
      expect(CoreType.map.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$Map.wrap(inner)'));
    });
    test('MapEntry', () {
      expect(CoreType.mapEntry.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$MapEntry.wrap(inner)'));
    });
    test('Match', () {
      expect(CoreType.match.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$Match.wrap(inner)'));
    });
    test('null', () {
      expect(CoreType.null$.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$null()'));
    });
    test('num', () {
      expect(CoreType.num.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$num(inner)'));
    });
    test('num', () {
      expect(CoreType.num.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$num(inner)'));
    });
    test('Object', () {
      expect(CoreType.object.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$Object(inner)'));
    });
    test('Pattern', () {
      expect(CoreType.pattern.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$Pattern.wrap(inner)'));
    });
    test('RegExp', () {
      expect(CoreType.regExp.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$RegExp.wrap(inner)'));
    });
    test('StackTrace', () {
      expect(CoreType.stackTrace.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$StackTrace.wrap(inner)'));
    });
    test('String', () {
      expect(CoreType.string.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$String(inner)'));
    });
    test('StringBuffer', () {
      expect(CoreType.stringBuffer.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$StringBuffer.wrap(inner)'));
    });
    test('Uri', () {
      expect(CoreType.uri.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$Uri.wrap(inner)'));
    });
  });
}
