// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'methods_test_source.dart';

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
          params: [
            'a'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
                ),
                [],
              ),
              nullable: false,
            )),
            'b'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
                ),
                [],
              ),
              nullable: false,
            )),
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'positionalParameters': BridgeMethodDef(
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
          params: [
            'base'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
                ),
                [],
              ),
              nullable: false,
            )),
            's1'.paramOptional(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
                ),
                [],
              ),
              nullable: true,
            )),
            's2'.paramOptional(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
                ),
                [],
              ),
              nullable: false,
            )),
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'namedParameters': BridgeMethodDef(
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
          params: [
            'base'.param(BridgeTypeAnnotation(
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
          namedParams: [
            's1'.paramOptional(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
                ),
                [],
              ),
              nullable: true,
            )),
            's2'.paramOptional(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
                ),
                [],
              ),
              nullable: false,
            )),
            's3'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
                ),
                [],
              ),
              nullable: false,
            )),
          ],
          generics: {},
        ),
        isStatic: false,
      ),
      'nullableWithDefault': BridgeMethodDef(
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
          params: [
            'base'.param(BridgeTypeAnnotation(
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
          namedParams: [
            's'.paramOptional(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
                ),
                [],
              ),
              nullable: true,
            ))
          ],
          generics: {},
        ),
        isStatic: false,
      ),
    },
    getters: {},
    setters: {},
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
      case 'positionalParameters':
        return $Function($TestClass.$m$positionalParameters);
      case 'namedParameters':
        return $Function($TestClass.$m$namedParameters);
      case 'nullableWithDefault':
        return $Function($TestClass.$m$nullableWithDefault);
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

  static $Value? $m$add(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int((target!.$value as TestClass).add(
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

  static $Value? $m$positionalParameters(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int((target!.$value as TestClass).positionalParameters(
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

  static $Value? $m$namedParameters(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int((target!.$value as TestClass).namedParameters(
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

  static $Value? $m$nullableWithDefault(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int((target!.$value as TestClass).nullableWithDefault(
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
}
