import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval_extensions.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:eval_builder_annotations/annotations.dart';

part 'subtypes_test_source.g.dart';

@Wrapped()
class SupClass1 {
  int propertyFromSup1 = 0;

  int methodFromSup1(int value) {
    return propertyFromSup1 + value;
  }

  static int staticPropertyFromSup1 = 1;
  static int staticMethodFromSup1(int value) {
    return staticPropertyFromSup1 + value;
  }
}

@Wrapped()
abstract class SupClass2 extends SupClass1 {
  int propertyFromSup2 = 0;

  int methodFromSup2(int value) {
    return propertyFromSup1 + value;
  }

  int abstractMethodFromSup2(int value);

  static int staticPropertyFromSup2 = 1;
  static int staticMethodFromSup2(int value) {
    return staticPropertyFromSup2 + value;
  }
}

abstract class SupClass3 extends SupClass2 {
  int propertyFromSup3 = 0;

  int methodFromSup3(int value) {
    return propertyFromSup3 + value;
  }

  int abstractMethodFromSup3(int value);

  static int staticPropertyFromSup3 = 1;
  static int staticMethodFromSup3(int value) {
    return staticPropertyFromSup3 + value;
  }
}

@Wrapped()
abstract class Interface1 {
  int methodFromInterface1();
}

abstract class Interface2 extends Interface1 {
  int methodFromInterface2();
}

@Wrapped()
abstract class Interface3 {
  int methodFromInterface3();
}

mixin Mixin1 implements Interface1 {
  @override
  int methodFromInterface1() {
    return 10;
  }
}

@Wrapped()
class TestClass extends SupClass3
    with Mixin1
    implements Interface2, Interface3 {
  int property = 0;

  int method(int value) {
    return property + value;
  }

  static int staticProperty = 1;
  static int staticMethod(int value) {
    return staticProperty + value;
  }

  @override
  int abstractMethodFromSup2(int value) {
    return value;
  }

  @override
  int abstractMethodFromSup3(int value) {
    return propertyFromSup3 + value;
  }

  @override
  int methodFromInterface2() {
    return 20;
  }

  @override
  int methodFromInterface3() {
    return 30;
  }
}

@Wrapped()
class RandomClass {}
