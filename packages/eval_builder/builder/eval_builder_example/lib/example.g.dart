// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// WrapperGenerator
// **************************************************************************

class $ExampleClass implements ExampleClass, $Instance {
  $ExampleClass.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:myPackage/file.dart',
    'ExampleClass',
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
      'create': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: $type.ref.annotate,
          params: [
            'test'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
                ),
                [],
              ),
              nullable: false,
            ))
          ],
          namedParams: [],
          generics: {},
        ),
        isFactory: false,
      )
    },
    methods: {},
    getters: {
      'test': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ),
            nullable: false,
          ),
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      )
    },
    setters: {},
    bridge: false,
    wrap: true,
  );

  @override
  final ExampleClass $value;

  late final $Instance _$superWrapper = $Object($value);

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'ExampleClass.create',
      $ExampleClass.$create,
    );
  }

  @override
  get $reified => $value;

  static $Value? $create(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $ExampleClass.wrap(ExampleClass.create(($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! String ? ($.$reified as String) : $$;
    }(args[0]!)));
  }

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
      case 'test':
        return $String($value.test);
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

  @override
  String toString() {
    return $value.toString();
  }

  @override
  String get test => $value.test;
}

class $ExampleEnum implements $Instance {
  $ExampleEnum.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:myPackage/file.dart',
    'ExampleEnum',
  );

  static final $declaration = BridgeEnumDef(
    $type.ref,
    values: [
      'foo',
      'bar',
    ],
    methods: {},
    getters: {
      'values': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'List',
              ),
              [
                BridgeTypeRef(
                  $ExampleEnum.$type,
                  [],
                )
              ],
            ),
            nullable: false,
          ),
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'index': BridgeMethodDef(
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
        isStatic: false,
      ),
    },
    setters: {},
  );

  @override
  final ExampleEnum $value;

  static final $values = {
    'foo': $ExampleEnum.wrap(ExampleEnum.foo),
    'bar': $ExampleEnum.wrap(ExampleEnum.bar),
  };

  late final $Instance _$superWrapper = $Object($value);

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeEnum($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'ExampleEnum.foo*g',
      $ExampleEnum.$g$foo,
    );
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'ExampleEnum.bar*g',
      $ExampleEnum.$g$bar,
    );
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'ExampleEnum.values*g',
      $ExampleEnum.$g$values,
    );
    runtime.registerBridgeEnumValues(
      'package:myPackage/file.dart',
      'ExampleEnum',
      $ExampleEnum.$values,
    );
  }

  @override
  get $reified => $value;

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
      case 'values':
        return $List.wrap(ExampleEnum.values);
      case 'index':
        return $int($value.index);
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

  static $Value? $g$foo(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $ExampleEnum.wrap(ExampleEnum.foo);
  }

  static $Value? $g$bar(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $ExampleEnum.wrap(ExampleEnum.bar);
  }

  static $Value? $g$values(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $List.wrap(ExampleEnum.values);
  }
}

class $_WrapThis implements $Instance {
  $_WrapThis.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:myPackage/file.dart',
    'ExternalClass',
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
    methods: {},
    getters: {
      'foo': BridgeMethodDef(
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
        isStatic: false,
      )
    },
    setters: {
      'foo': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_foo'.param(BridgeTypeAnnotation(
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
        isStatic: false,
      )
    },
    bridge: false,
    wrap: true,
  );

  @override
  final e.ExternalClass $value;

  late final $Instance _$superWrapper = $Object($value);

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'ExternalClass.',
      $_WrapThis.$new,
    );
  }

  @override
  get $reified => $value;

  static $Value? $new(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $_WrapThis.wrap(e.ExternalClass());
  }

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
      case 'foo':
        return $int($value.foo);
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
      case 'foo':
        $value.foo = ($Value $) {
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
}
