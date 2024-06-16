import 'package:dart_eval/dart_eval.dart';
import 'package:test/test.dart';

import 'static_test_wrapped.dart';

void main() {
  late Runtime runtime;

  setUpAll(() {
    var compiler = Compiler();
    $TestClass.configureForCompile(compiler);

    runtime = Runtime.ofProgram(compiler.compile({
      'eval_builder': {
        'main.dart': '''
      import 'package:my_package/file.dart';
      int value() {
        return TestClass.value;
      }
      //void assign() {
      //  TestClass.value = 123;
      //}
      int value2() {
        return TestClass.value2;
      }
      //void assign2() {
      // TestClass.value2 = 456;
      //}
      void add() {
       TestClass.add(1);
      }
    '''
      }
    }));
    $TestClass.configureForRuntime(runtime);
  });

  test('value', () {
    TestClass.value = 987;
    expect(
        runtime.executeLib('package:eval_builder/main.dart', 'value', []), 987);
  });

  test('value2', () {
    TestClass.value2 = 567;
    expect(runtime.executeLib('package:eval_builder/main.dart', 'value2', []),
        567);
  });

  // Static setters seem to be broken: https://github.com/ethanblake4/dart_eval/issues/207
  test('assign', () {
    TestClass.value = 0;
    runtime.executeLib('package:eval_builder/main.dart', 'assign', []);
    expect(TestClass.value, 123);
  }, skip: true);

  // Static setters seem to be broken: https://github.com/ethanblake4/dart_eval/issues/207
  test('assign2', () {
    TestClass.value2 = 0;
    runtime.executeLib('package:eval_builder/main.dart', 'assign2', []);
    expect(TestClass.value2, 456);
  }, skip: true);

  test('add', () {
    TestClass.value = 234;
    runtime.executeLib('package:eval_builder/main.dart', 'add', []);
    expect(TestClass.value, 235);
  });
}
