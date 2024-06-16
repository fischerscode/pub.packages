import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:test/test.dart';

import 'basic_test_wrapped.dart';

void main() {
  late Runtime runtime;

  setUpAll(() {
    var compiler = Compiler();
    $TestClass.configureForCompile(compiler);

    runtime = Runtime.ofProgram(compiler.compile({
      'eval_builder': {
        'main.dart': '''
      import 'package:myPackage/file.dart';
      int test1(TestClass test) {
        return test.value;
      }
      TestClass test2(int input) {
        return TestClass(input);
      }
      void test3(TestClass test) {
        test.value2 = 123;
      }
      int test4(TestClass test) {
        return test.value2;
      }
      String test5(TestClass test) {
        return test.toString();
      }
    '''
      }
    }));
    $TestClass.configureForRuntime(runtime);
  });

  test('Extract an return', () {
    expect(
        runtime.executeLib('package:eval_builder/main.dart', 'test1',
            [$TestClass.wrap(TestClass(5))]),
        5);
  });

  test('Construct an return', () {
    var result =
        runtime.executeLib('package:eval_builder/main.dart', 'test2', [10]);
    expect(result, isA<$TestClass>());
    expect((result as $TestClass).$value.value, 10);
  });

  test('Setter', () {
    var testInstance = TestClass(20);
    runtime.executeLib('package:eval_builder/main.dart', 'test3',
        [$TestClass.wrap(testInstance)]);
    expect(testInstance.value, 123);
  });
  test('Getter', () {
    var result = runtime.executeLib('package:eval_builder/main.dart', 'test4',
        [$TestClass.wrap(TestClass(456))]);
    expect(result, isA<int>());
    expect(result, 456);
  });
  test('Defer to object', () {
    var result = runtime.executeLib('package:eval_builder/main.dart', 'test5',
        [$TestClass.wrap(TestClass(0))]);
    expect(result, isA<$String>());
    expect((result as $String).$value, "Instance of 'TestClass'");
  });
}
