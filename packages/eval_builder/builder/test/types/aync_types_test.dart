import 'package:code_builder/code_builder.dart';
import 'package:eval_builder/src/types/async_types.dart';
import 'package:test/test.dart';

import '../matches_spec.dart';

void main() {
  group('wrap', () {
    test('Completer', () {
      expect(AsyncType.completer.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$Completer.wrap(inner)'));
    });
    test('Stream', () {
      expect(AsyncType.stream.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$Stream.wrap(inner)'));
    });
    test('StreamController', () {
      expect(AsyncType.streamController.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$StreamController.wrap(inner)'));
    });
    test('StreamSink', () {
      expect(AsyncType.streamSink.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$StreamSink.wrap(inner)'));
    });
    test('StreamSubscription', () {
      expect(AsyncType.streamSubscription.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$StreamSubscription.wrap(inner)'));
    });
    test('StreamTransformer', () {
      expect(AsyncType.streamTransformer.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$StreamTransformer.wrap(inner)'));
    });
    test('StreamView', () {
      expect(AsyncType.streamView.wrap(CodeExpression(Code('inner'))),
          specMatches(r'$StreamView.wrap(inner)'));
    });
  });
}
