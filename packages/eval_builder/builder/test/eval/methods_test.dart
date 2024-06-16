import 'package:dart_eval/dart_eval.dart';
import 'package:test/test.dart';

import 'methods_test_source.dart';

void main() {
  late Runtime runtime;

  setUpAll(() {
    var compiler = Compiler();
    $TestClass.configureForCompile(compiler);

    runtime = Runtime.ofProgram(compiler.compile({
      'eval_builder': {
        'main.dart': '''
      import 'package:myPackage/file.dart';
      int add() {
        return TestClass().add(2, 3);
      }
      int positionalParameters1() {
        return TestClass().positionalParameters(10);
      }
      int positionalParameters2() {
        return TestClass().positionalParameters(10,3);
      }
      int positionalParameters3() {
        return TestClass().positionalParameters(10,3,4);
      }
      int namedParameters1() {
        return TestClass().namedParameters(11, s1: 2, s3: 5);
      }
      int namedParameters2() {
        return TestClass().namedParameters(12, s2: 4, s3: 1);
      }
      int namedParameters3() {
        return TestClass().namedParameters(13, s1: null, s2: 4, s3: 1);
      }
      int nullableWithDefault1() {
        return TestClass().nullableWithDefault(10);
      }
      int nullableWithDefault2() {
        return TestClass().nullableWithDefault(10,s: 2);
      }
      int nullableWithDefault3() {
        return TestClass().nullableWithDefault(10,s: null);
      }
    '''
      }
    }));
    $TestClass.configureForRuntime(runtime);
  });

  test('add', () {
    expect(runtime.executeLib('package:eval_builder/main.dart', 'add', []), 5);
  });
  test('positionalParameters1', () {
    expect(
        runtime.executeLib(
            'package:eval_builder/main.dart', 'positionalParameters1', []),
        8);
  });
  test('positionalParameters2', () {
    expect(
        runtime.executeLib(
            'package:eval_builder/main.dart', 'positionalParameters2', []),
        5);
  });
  test('positionalParameters3', () {
    expect(
        runtime.executeLib(
            'package:eval_builder/main.dart', 'positionalParameters3', []),
        3);
  });
  test('namedParameters1', () {
    expect(
        runtime.executeLib(
            'package:eval_builder/main.dart', 'namedParameters1', []),
        2);
  });
  test('namedParameters2', () {
    expect(
        runtime.executeLib(
            'package:eval_builder/main.dart', 'namedParameters2', []),
        7);
  });
  test('namedParameters3', () {
    expect(
        runtime.executeLib(
            'package:eval_builder/main.dart', 'namedParameters3', []),
        8);
  });
  test('nullableWithDefault', () {
    expect(
        runtime.executeLib(
            'package:eval_builder/main.dart', 'nullableWithDefault1', []),
        5);
    expect(
        runtime.executeLib(
            'package:eval_builder/main.dart', 'nullableWithDefault2', []),
        8);
    expect(
        runtime.executeLib(
            'package:eval_builder/main.dart', 'nullableWithDefault3', []),
        0);
  });
}
