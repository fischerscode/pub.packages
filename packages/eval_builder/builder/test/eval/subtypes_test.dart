import 'package:dart_eval/dart_eval.dart';
import 'package:test/test.dart';

import 'subtypes_test_source.dart';

void main() {
  late Runtime runtime;

  setUpAll(() {
    var compiler = Compiler();
    $SupClass1.configureForCompile(compiler);
    $SupClass2.configureForCompile(compiler);
    $Interface1.configureForCompile(compiler);
    $Interface3.configureForCompile(compiler);
    $TestClass.configureForCompile(compiler);
    $RandomClass.configureForCompile(compiler);

    runtime = Runtime.ofProgram(compiler.compile({
      'eval_builder': {
        'main.dart': '''
      import 'package:myPackage/file.dart';
      SupClass1 justReturn(SupClass2 i) {
        return i;
      }
      int accessFromSub() {
        var test = TestClass();
        test.propertyFromSup1 = 2;
        return test.methodFromSup1(3);
      }
      int fromMixin() {
        var test = TestClass();
        return test.methodFromInterface1();
      }
      List<bool> types() {
        var test = TestClass();
        return [
          test is SupClass1,
          test is SupClass2,
          test is Interface1,
          test is Interface3,
          test is RandomClass,
          test is RandomClass2,
        ];
      }

      class RandomClass2 {}
    '''
      }
    }));
    $SupClass1.configureForRuntime(runtime);
    $SupClass2.configureForRuntime(runtime);
    $Interface1.configureForRuntime(runtime);
    $Interface3.configureForRuntime(runtime);
    $TestClass.configureForRuntime(runtime);
    $TestClass.configureForRuntime(runtime);
    $RandomClass.configureForRuntime(runtime);
  });

  test('justReturn', () {
    var i = TestClass();
    expect(
        runtime.executeLib('package:eval_builder/main.dart', 'justReturn', [i]),
        i);
  });
  test('accessFromSub', () {
    expect(
        runtime
            .executeLib('package:eval_builder/main.dart', 'accessFromSub', []),
        5);
  });
  test('fromMixin', () {
    expect(
        runtime.executeLib('package:eval_builder/main.dart', 'fromMixin', []),
        10);
  });
  test('types', () {
    expect(
        (runtime.executeLib('package:eval_builder/main.dart', 'types', [])
                as List)
            .map((e) => e.$value),
        orderedEquals([true, true, true, true, false, false]));
  });
}
