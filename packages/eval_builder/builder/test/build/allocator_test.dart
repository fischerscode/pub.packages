import 'package:code_builder/code_builder.dart';
import 'package:eval_builder/src/build/allocator.dart';
import 'package:test/test.dart';

void main() {
  test('Allocator', () {
    var allocator = PrefixAllocator({'testurl': 't'});

    expect(allocator.allocate(refer('symbol1')), 'symbol1');
    expect(allocator.allocate(refer('symbol2', 'symbol2url')), 'symbol2');
    expect(allocator.allocate(refer('symbol3', 'testurl')), 't.symbol3');

    expect(
        allocator.imports,
        unorderedMatches([
          matchesDirective(Directive.import('testurl', as: 't')),
          matchesDirective(Directive.import('symbol2url'))
        ]));
  });
}

class _DirectiveMatcher extends Matcher {
  final Directive expected;

  _DirectiveMatcher(this.expected);

  @override
  Description describe(Description description) {
    return description.add('matches directive $expected');
  }

  @override
  bool matches(item, Map matchState) {
    if (item is! Directive) {
      return false;
    }

    return item.as == expected.as &&
        item.url == expected.url &&
        item.type == expected.type &&
        item.deferred == expected.deferred &&
        unorderedEquals(expected.show).matches(item.show, {}) &&
        unorderedEquals(expected.hide).matches(item.hide, {});
  }
}

Matcher matchesDirective(Directive directive) => _DirectiveMatcher(directive);
