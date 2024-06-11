import 'package:code_builder/code_builder.dart';
import 'package:eval_builder/src/types/convert_types.dart';
import 'package:test/test.dart';

import '../matches_spec.dart';

void main() {
  group('wrap', () {
    test('LinkedHashMap', () {
      expect(ConvertType.codec.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$Codec.wrap(inner)'));
    });
    test('Converter', () {
      expect(ConvertType.converter.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$Converter.wrap(inner)'));
    });
    test('Encoding', () {
      expect(ConvertType.encoding.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$Encoding.wrap(inner)'));
    });
    test('JsonCodec', () {
      expect(ConvertType.jsonCodec.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$JsonCodec.wrap(inner)'));
    });
    test('JsonDecoder', () {
      expect(ConvertType.jsonDecoder.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$JsonDecoder.wrap(inner)'));
    });
    test('JsonEncoder', () {
      expect(ConvertType.jsonEncoder.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$JsonEncoder.wrap(inner)'));
    });
    test('Utf8Codec', () {
      expect(ConvertType.utf8Codec.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$Utf8Codec.wrap(inner)'));
    });
    test('Utf8Decoder', () {
      expect(ConvertType.utf8Decoder.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$Utf8Decoder.wrap(inner)'));
    });
  });
}
