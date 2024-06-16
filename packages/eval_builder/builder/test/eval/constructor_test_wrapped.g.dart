// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constructor_test_wrapped.dart';

// **************************************************************************
// WrapperGenerator
// **************************************************************************

class $TestClass implements $Instance {
  $TestClass.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:myPackage/file.dart',
    'TestClass',
  );

  static final $declaration = BridgeClassDef(
    BridgeClassType(
      $type.ref,
      $extends: BridgeTypeRef(BridgeTypeSpec(
        'dart:core',
        'Object',
      )),
      $implements: [],
      $with: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: $type.ref.annotate,
          params: [
            'value'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isFactory: false,
      ),
      'from': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: $type.ref.annotate,
          params: [
            'value'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isFactory: false,
      ),
      'add': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: $type.ref.annotate,
          params: [
            'a'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotate),
            'b'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotate),
          ],
          namedParams: [],
          generics: {},
        ),
        isFactory: false,
      ),
      'subtract': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: $type.ref.annotate,
          params: [
            'a'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotate),
            'b'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotate),
          ],
          namedParams: [],
          generics: {},
        ),
        isFactory: true,
      ),
      'positionalParameters': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: $type.ref.annotate,
          params: [
            'base'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotate),
            's1'.paramOptional(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotateNullable),
            's2'.paramOptional(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotate),
          ],
          namedParams: [],
          generics: {},
        ),
        isFactory: false,
      ),
      'namedParameters': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: $type.ref.annotate,
          params: [
            'base'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotate)
          ],
          namedParams: [
            's1'.paramOptional(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotateNullable),
            's2'.paramOptional(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotate),
            's3'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotate),
          ],
          generics: {},
        ),
        isFactory: false,
      ),
      'nullableWithDefault': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: $type.ref.annotate,
          params: [
            'base'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotate)
          ],
          namedParams: [
            's'.paramOptional(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotateNullable)
          ],
          generics: {},
        ),
        isFactory: false,
      ),
    },
    methods: {},
    getters: {
      'value': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'int',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      )
    },
    setters: {
      'value': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_value'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotate)
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
  final TestClass $value;

  late final $Instance _$superWrapper = $Object($value);

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'TestClass.',
      $TestClass.$new,
    );
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'TestClass.from',
      $TestClass.$from,
    );
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'TestClass.add',
      $TestClass.$add,
    );
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'TestClass.subtract',
      $TestClass.$subtract,
    );
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'TestClass.positionalParameters',
      $TestClass.$positionalParameters,
    );
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'TestClass.namedParameters',
      $TestClass.$namedParameters,
    );
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'TestClass.nullableWithDefault',
      $TestClass.$nullableWithDefault,
    );
  }

  @override
  get $reified => $value;

  static $Value? $new(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $TestClass.wrap(TestClass(($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!)));
  }

  static $Value? $from(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $TestClass.wrap(TestClass.from(($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!)));
  }

  static $Value? $add(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $TestClass.wrap(TestClass.add(
      ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is! int ? ($.$reified as int) : $$;
      }(args[0]!),
      ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is! int ? ($.$reified as int) : $$;
      }(args[1]!),
    ));
  }

  static $Value? $subtract(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $TestClass.wrap(TestClass.subtract(
      ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is! int ? ($.$reified as int) : $$;
      }(args[0]!),
      ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is! int ? ($.$reified as int) : $$;
      }(args[1]!),
    ));
  }

  static $Value? $positionalParameters(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $TestClass.wrap(TestClass.positionalParameters(
      ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is! int ? ($.$reified as int) : $$;
      }(args[0]!),
      ($Value? $) {
        final $$ = ($ as dynamic);
        return $ == null
            ? null
            : $$ is $null
                ? null
                : $$ is! int?
                    ? ($.$reified as int?)
                    : $$;
      }(args[1]),
      ($Value? $) {
        final $$ = ($ as dynamic);
        return $ == null
            ? 2
            : $$ is! int
                ? ($.$reified as int)
                : $$;
      }(args[2]),
    ));
  }

  static $Value? $namedParameters(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $TestClass.wrap(TestClass.namedParameters(
      ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is! int ? ($.$reified as int) : $$;
      }(args[0]!),
      s1: ($Value? $) {
        final $$ = ($ as dynamic);
        return $ == null
            ? null
            : $$ is $null
                ? null
                : $$ is! int?
                    ? ($.$reified as int?)
                    : $$;
      }(args[1]),
      s2: ($Value? $) {
        final $$ = ($ as dynamic);
        return $ == null
            ? 2
            : $$ is! int
                ? ($.$reified as int)
                : $$;
      }(args[2]),
      s3: ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is! int ? ($.$reified as int) : $$;
      }(args[3]!),
    ));
  }

  static $Value? $nullableWithDefault(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $TestClass.wrap(TestClass.nullableWithDefault(
      ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is! int ? ($.$reified as int) : $$;
      }(args[0]!),
      s: ($Value? $) {
        final $$ = ($ as dynamic);
        return $ == null
            ? 5
            : $$ is $null
                ? null
                : $$ is! int?
                    ? ($.$reified as int?)
                    : $$;
      }(args[1]),
    ));
  }

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
      case 'value':
        return $int($value.value);
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
        $value.value = ($Value $) {
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
