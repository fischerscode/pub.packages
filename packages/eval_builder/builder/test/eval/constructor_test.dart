import 'package:dart_eval/dart_eval.dart';
import 'package:test/test.dart';

import 'constructor_test_wrapped.dart';

void main() {
  late Runtime runtime;

  setUpAll(() {
    var compiler = Compiler();
    $TestClass.configureForCompile(compiler);

    runtime = Runtime.ofProgram(compiler.compile({
      'eval_builder': {
        'main.dart': '''
      import 'package:myPackage/file.dart';
      TestClass unnamed() {
        return TestClass(1);
      }
      TestClass named() {
        return TestClass.from(2);
      }
      TestClass add() {
        return TestClass.add(2, 3);
      }
      TestClass subtract() {
        return TestClass.subtract(2, 3);
      }
      TestClass positionalParameters1() {
        return TestClass.positionalParameters(10);
      }
      TestClass positionalParameters2() {
        return TestClass.positionalParameters(10,3);
      }
      TestClass positionalParameters3() {
        return TestClass.positionalParameters(10,3,4);
      }
      TestClass namedParameters1() {
        return TestClass.namedParameters(11, s1: 2, s3: 5);
      }
      TestClass namedParameters2() {
        return TestClass.namedParameters(12, s2: 4, s3: 1);
      }
      TestClass namedParameters3() {
        return TestClass.namedParameters(13, s1: null, s2: 4, s3: 1);
      }
      TestClass nullableWithDefault1() {
        return TestClass.nullableWithDefault(10);
      }
      TestClass nullableWithDefault2() {
        return TestClass.nullableWithDefault(10,s: 2);
      }
      TestClass nullableWithDefault3() {
        return TestClass.nullableWithDefault(10,s: null);
      }
    '''
      }
    }));
    $TestClass.configureForRuntime(runtime);
  });

  test('unnamed', () {
    expect(
        runtime
            .executeLib('package:eval_builder/main.dart', 'unnamed', [])
            .$value
            .value,
        1);
  });

  test('named', () {
    expect(
        runtime
            .executeLib('package:eval_builder/main.dart', 'named', [])
            .$value
            .value,
        2);
  });
  test('add', () {
    expect(
        runtime
            .executeLib('package:eval_builder/main.dart', 'add', [])
            .$value
            .value,
        5);
  });
  test('subtract', () {
    expect(
        runtime
            .executeLib('package:eval_builder/main.dart', 'subtract', [])
            .$value
            .value,
        -1);
  });
  test('positionalParameters1', () {
    expect(
        runtime
            .executeLib(
                'package:eval_builder/main.dart', 'positionalParameters1', [])
            .$value
            .value,
        8);
  });
  test('positionalParameters2', () {
    expect(
        runtime
            .executeLib(
                'package:eval_builder/main.dart', 'positionalParameters2', [])
            .$value
            .value,
        5);
  });
  test('positionalParameters3', () {
    expect(
        runtime
            .executeLib(
                'package:eval_builder/main.dart', 'positionalParameters3', [])
            .$value
            .value,
        3);
  });
  test('namedParameters1', () {
    expect(
        runtime
            .executeLib(
                'package:eval_builder/main.dart', 'namedParameters1', [])
            .$value
            .value,
        2);
  });
  test('namedParameters2', () {
    expect(
        runtime
            .executeLib(
                'package:eval_builder/main.dart', 'namedParameters2', [])
            .$value
            .value,
        7);
  });
  test('namedParameters3', () {
    expect(
        runtime
            .executeLib(
                'package:eval_builder/main.dart', 'namedParameters3', [])
            .$value
            .value,
        8);
  });
  test('nullableWithDefault', () {
    expect(
        runtime
            .executeLib(
                'package:eval_builder/main.dart', 'nullableWithDefault1', [])
            .$value
            .value,
        5);
    expect(
        runtime
            .executeLib(
                'package:eval_builder/main.dart', 'nullableWithDefault2', [])
            .$value
            .value,
        8);
    expect(
        runtime
            .executeLib(
                'package:eval_builder/main.dart', 'nullableWithDefault3', [])
            .$value
            .value,
        0);
  });
}
