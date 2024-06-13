import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart';
import 'package:eval_builder/src/build/prefix_resolver.dart';
import 'package:eval_builder/src/build/wrapper.dart';
import 'package:test/test.dart';

import '../analyzer.dart';

void main() {
  late LibraryElement testLib1;
  late LibraryElement testLib2;

  setUpAll(() async {
    var resolved = await Future.wait([
      resolveLibraryFromFile('prefix_resolver_test_lib1.dart', ['build']),
      resolveLibraryFromFile('prefix_resolver_test_lib2.dart', ['build'])
    ]);
    testLib1 = resolved.first!.element;
    testLib2 = resolved.last!.element;
  });

  test('without prefix', () {
    var resolver = PrefixResolver(testLib1.prefixes);

    expect(resolver.allocate(Reference('Lib1')), 'Lib1');
    expect(
        resolver.allocate(Reference('Lib1', 'prefix_resolver_test_lib1.dart')),
        'Lib1');
    expect(
        resolver.allocate(Reference('Lib1',
            'package:prefix_builder/test/build/prefix_resolver_test_lib1.dart')),
        'Lib1');

    expect(
        resolver.allocate(Reference('Lib1',
            'package:prefix_builder/test/build/prefix_resolver_test_lib1.dart')),
        'Lib1');

    var lib1 = testLib1.getClass('Lib1');

    expect(resolver.allocate(lib1!.thisType.refer()), 'Lib1');

    expect(resolver.allocate(Reference('String', 'dart:core')), 'String');

    var lib2 = lib1.fields.first.type;
    var lib2Nullable = lib1.fields.skip(1).first.type;
    var future = lib1.fields.skip(2).first.type;

    expect(resolver.allocate(lib2.refer()), 'Lib2');
    expect(resolver.allocate(lib2Nullable.refer()), 'Lib2');
    expect(resolver.allocate(future.refer()), 'Future');

    expect(resolver.allocate(Reference('Lib2')), 'Lib2');
    expect(
        resolver.allocate(Reference('Lib2', 'prefix_resolver_test_lib2.dart')),
        'Lib2');
    expect(
        resolver.allocate(Reference('Lib2',
            'package:prefix_builder/test/build/prefix_resolver_test_lib2.dart')),
        'Lib2');

    expect(
        resolver.allocate(Reference('Lib2',
            'package:prefix_builder/test/build/prefix_resolver_test_lib2.dart')),
        'Lib2');

    expect(resolver.allocate(Reference('DoesNotExist')), 'DoesNotExist');

    expect(
        resolver.allocate(Reference('HashMap', 'dart:collection')), 'HashMap');
    expect(
        resolver.allocate(Reference('HashSet', 'dart:collection')), 'HashSet');
  });

  test('with prefix', () {
    var resolver = PrefixResolver(testLib2.prefixes);

    expect(resolver.allocate(Reference('Lib2')), 'Lib2');
    expect(
        resolver.allocate(Reference('Lib2', 'prefix_resolver_test_lib2.dart')),
        'Lib2');
    expect(
        resolver.allocate(Reference('Lib2',
            'package:prefix_builder/test/build/prefix_resolver_test_lib2.dart')),
        'Lib2');

    expect(
        resolver.allocate(Reference('Lib2',
            'package:prefix_builder/test/build/prefix_resolver_test_lib2.dart')),
        'Lib2');

    var lib2 = testLib2.getClass('Lib2');

    expect(resolver.allocate(lib2!.thisType.refer()), 'Lib2');

    expect(resolver.allocate(Reference('String', 'dart:core')), 'core.String');
    expect(resolver.allocate(Reference('int', 'dart:core')), 'core2.int');
    expect(resolver.allocate(Reference('double', 'dart:core')), 'core3.double');

    var lib1 = lib2.fields.first.type;
    var lib1Nullable = lib2.fields.skip(1).first.type;
    var future = lib2.fields.skip(2).first.type;

    expect(resolver.allocate(lib1.refer()), 'l.Lib1');
    expect(resolver.allocate(lib1Nullable.refer()), 'l.Lib1');
    expect(resolver.allocate(future.refer()), 'lib3.Future');

    expect(resolver.allocate(Reference('Lib1')), 'Lib1');

    //TODO: Fix import prefixes for reative imports (Low priorits. Does not apply for users.)
    // expect(
    //     resolver.allocate(Reference('Lib1', 'prefix_resolver_test_lib1.dart')),
    //     'l.Lib1');
    // expect(
    //     resolver.allocate(Reference('Lib1',
    //         'package:prefix_builder/test/build/prefix_resolver_test_lib1.dart')),
    //     'l.Lib1');
    // expect(
    //     resolver.allocate(Reference('Lib1',
    //         'package:prefix_builder/test/build/prefix_resolver_test_lib1.dart')),
    //     'l.Lib1');

    expect(resolver.allocate(Reference('DoesNotExist')), 'DoesNotExist');

    expect(resolver.allocate(Reference('HashMap', 'dart:collection')),
        'lib3.HashMap');
    expect(
        resolver.allocate(Reference('HashSet', 'dart:collection')), 'HashSet');
  });
}
