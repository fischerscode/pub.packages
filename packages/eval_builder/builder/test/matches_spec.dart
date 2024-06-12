import 'package:analyzer/dart/analysis/results.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:test/test.dart';

class SpecMatcher extends CustomMatcher {
  SpecMatcher(matcher, [this.allocator])
      : super('Spec that is', 'code', matcher);

  final Allocator? allocator;

  @override
  Object? featureValueOf(actual) {
    var code = (actual as Spec)
        .accept(DartEmitter(
            allocator: allocator ?? Allocator.none, useNullSafetySyntax: true))
        .toString();

    try {
      return DartFormatter().format(code);
    } on FormatterException catch (_) {
      return code;
    }
  }
}

specMatches(matcher, [allocator]) => SpecMatcher(matcher, allocator);
