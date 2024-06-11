import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:test/test.dart';

class SpecMatcher extends CustomMatcher {
  SpecMatcher(matcher) : super('Spec that is', 'code', matcher);

  @override
  Object? featureValueOf(actual) {
    var code = (actual as Spec)
        .accept(DartEmitter(useNullSafetySyntax: true))
        .toString();

    try {
      return DartFormatter().format(code);
    } on FormatterException catch (_) {
      return code;
    }
  }
}

specMatches(matcher) => SpecMatcher(matcher);
