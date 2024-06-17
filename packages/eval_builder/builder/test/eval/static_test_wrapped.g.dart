// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'static_test_wrapped.dart';

// **************************************************************************
// WrapperGenerator
// **************************************************************************

class $TestClass implements $Instance {
  $TestClass.wrap(this.$value);

  static const $type = BridgeTypeSpec(
    'package:my_package/file.dart',
    'TestClass',
  );

  static final $declaration = BridgeClassDef(
    BridgeClassType(
      $type.ref,
      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'dart:core',
          'Object',
        ),
        [],
      ),
      $implements: [],
      $with: [],
      isAbstract: false,
      generics: {},
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: $type.ref.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isFactory: false,
      )
    },
    methods: {
      'add': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            'other'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
                ),
                [],
              ),
              nullable: false,
            ))
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      )
    },
    getters: {
      'value': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ),
            nullable: false,
          ),
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'value2': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ),
            nullable: false,
          ),
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
    },
    setters: {
      'value': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_value'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
                ),
                [],
              ),
              nullable: false,
            ))
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'value2': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            'newValue'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
                ),
                [],
              ),
              nullable: false,
            ))
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
    },
    bridge: false,
    wrap: true,
  );

  @override
  final TestClass $value;

  late final $Instance _$superWrapper = $Object($value);

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:my_package/file.dart',
      'TestClass.add',
      $TestClass.$m$add,
    );
    runtime.registerBridgeFunc(
      'package:my_package/file.dart',
      'TestClass.value*g',
      $TestClass.$g$value,
    );
    runtime.registerBridgeFunc(
      'package:my_package/file.dart',
      'TestClass.value*s',
      $TestClass.$s$value,
    );
    runtime.registerBridgeFunc(
      'package:my_package/file.dart',
      'TestClass.value2*g',
      $TestClass.$g$value2,
    );
    runtime.registerBridgeFunc(
      'package:my_package/file.dart',
      'TestClass.value2*s',
      $TestClass.$s$value2,
    );
    runtime.registerBridgeFunc(
      'package:my_package/file.dart',
      'TestClass.',
      $TestClass.$new,
    );
  }

  @override
  get $reified => $value;

  static $Value? $new(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $TestClass.wrap(TestClass());
  }

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
      case 'add':
        return $Function($TestClass.$m$add);
      case 'value':
        return $int(TestClass.value);
      case 'value2':
        return $int(TestClass.value2);
      default:
        return _$superWrapper.$getProperty(
          runtime,
          identifier,
        );
    }
  }

  @override
  void $setProperty(
    Runtime runtime,
    String identifier,
    $Value value,
  ) {
    switch (identifier) {
      case 'value':
        TestClass.value = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! int ? ($.$reified as int) : $$;
        }(value);
      case 'value2':
        TestClass.value2 = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! int ? ($.$reified as int) : $$;
        }(value);
      default:
        _$superWrapper.$setProperty(
          runtime,
          identifier,
          value,
        );
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) {
    return runtime.lookupType($type);
  }

  static $Value? $m$add(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return () {
      TestClass.add(($Value $) {
        final $$ = ($ as dynamic);
        return $$ is! int ? ($.$reified as int) : $$;
      }(args[0]!));
      return null;
    }();
  }

  static $Value? $g$value(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int(TestClass.value);
  }

  static $Value? $s$value(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    TestClass.value = ($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!);
    return null;
  }

  static $Value? $g$value2(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int(TestClass.value2);
  }

  static $Value? $s$value2(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    TestClass.value2 = ($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!);
    return null;
  }
}
