part of 'bimodal_wrapper_test_generation.dart';

class $BimodalClass implements BimodalClass, $Instance {
  $BimodalClass.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:my_eval/types.dart',
    'BimodalClass',
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
          params: [
            'finalString'.param(BridgeTypeAnnotation(
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
          namedParams: [
            'finalNullableString'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
                ),
                [],
              ),
              nullable: true,
            ))
          ],
          generics: {},
        ),
        isFactory: false,
      )
    },
    methods: {
      'stringTestMethod': BridgeMethodDef(
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
          params: [
            's1'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
                ),
                [],
              ),
              nullable: false,
            )),
            's2'.paramOptional(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
                ),
                [],
              ),
              nullable: true,
            )),
            's3'.paramOptional(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
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
      'nullableStringTestMethod': BridgeMethodDef(
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
          params: [
            's1'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
                ),
                [],
              ),
              nullable: true,
            )),
            's2'.paramOptional(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
                ),
                [],
              ),
              nullable: true,
            )),
            's3'.paramOptional(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
                ),
                [],
              ),
              nullable: true,
            )),
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'stringTestMethodNamed': BridgeMethodDef(
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
          namedParams: [
            's1'.paramOptional(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
                ),
                [],
              ),
              nullable: false,
            )),
            's2'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
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
      'nullableStringTestMethodNamed': BridgeMethodDef(
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
          namedParams: [
            's1'.paramOptional(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
                ),
                [],
              ),
              nullable: true,
            )),
            's2'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
                ),
                [],
              ),
              nullable: true,
            )),
            's3'.paramOptional(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
                ),
                [],
              ),
              nullable: true,
            )),
          ],
          generics: {},
        ),
        isStatic: false,
      ),
    },
    getters: {
      'finalString': BridgeMethodDef(
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
      ),
      'string': BridgeMethodDef(
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
      ),
      'staticFinalString': BridgeMethodDef(
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
        isStatic: true,
      ),
      'staticString': BridgeMethodDef(
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
        isStatic: true,
      ),
      'finalNullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ),
            nullable: true,
          ),
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'nullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ),
            nullable: true,
          ),
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'staticFinalNullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ),
            nullable: true,
          ),
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'staticNullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ),
            nullable: true,
          ),
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'stringGetter': BridgeMethodDef(
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
      ),
      'staticStringGetter': BridgeMethodDef(
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
        isStatic: true,
      ),
      'nullableStringGetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ),
            nullable: true,
          ),
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'staticNullableStringGetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ),
            nullable: true,
          ),
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
    },
    setters: {
      'string': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_string'.param(BridgeTypeAnnotation(
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
        isStatic: false,
      ),
      'staticString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_staticString'.param(BridgeTypeAnnotation(
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
        isStatic: true,
      ),
      'nullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_nullableString'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
                ),
                [],
              ),
              nullable: true,
            ))
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'staticNullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_staticNullableString'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
                ),
                [],
              ),
              nullable: true,
            ))
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'stringSetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            'value'.param(BridgeTypeAnnotation(
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
        isStatic: false,
      ),
      'staticStringSetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            'value'.param(BridgeTypeAnnotation(
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
        isStatic: true,
      ),
      'nullableStringSetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            'value'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
                ),
                [],
              ),
              nullable: true,
            ))
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'staticNullableStringSetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            'value'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'String',
                ),
                [],
              ),
              nullable: true,
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
  final BimodalClass $value;

  late final $Instance _$superWrapper = $Object($value);

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'BimodalClass.staticFinalString*g',
      $BimodalClass.$g$staticFinalString,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'BimodalClass.staticString*g',
      $BimodalClass.$g$staticString,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'BimodalClass.staticString*s',
      $BimodalClass.$s$staticString,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'BimodalClass._staticAccessedString*g',
      $BimodalClass.$g$_staticAccessedString,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'BimodalClass._staticAccessedString*s',
      $BimodalClass.$s$_staticAccessedString,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'BimodalClass.staticFinalNullableString*g',
      $BimodalClass.$g$staticFinalNullableString,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'BimodalClass.staticNullableString*g',
      $BimodalClass.$g$staticNullableString,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'BimodalClass.staticNullableString*s',
      $BimodalClass.$s$staticNullableString,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'BimodalClass._staticAccessedNullableString*g',
      $BimodalClass.$g$_staticAccessedNullableString,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'BimodalClass._staticAccessedNullableString*s',
      $BimodalClass.$s$_staticAccessedNullableString,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'BimodalClass.staticStringGetter*g',
      $BimodalClass.$g$staticStringGetter,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'BimodalClass.staticStringSetter*s',
      $BimodalClass.$s$staticStringSetter,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'BimodalClass.staticNullableStringGetter*g',
      $BimodalClass.$g$staticNullableStringGetter,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'BimodalClass.staticNullableStringSetter*s',
      $BimodalClass.$s$staticNullableStringSetter,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'BimodalClass.',
      $BimodalClass.$new,
    );
  }

  @override
  get $reified => $value;

  static $Value? $new(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $BimodalClass.wrap(BimodalClass(
      ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is! String ? ($.$reified as String) : $$;
      }(args[0]!),
      finalNullableString: ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is $null
            ? null
            : $$ is! String?
                ? ($.$reified as String?)
                : $$;
      }(args[1]!),
    ));
  }

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
      case 'stringTestMethod':
        return $Function($BimodalClass.$m$stringTestMethod);
      case 'nullableStringTestMethod':
        return $Function($BimodalClass.$m$nullableStringTestMethod);
      case 'stringTestMethodNamed':
        return $Function($BimodalClass.$m$stringTestMethodNamed);
      case 'nullableStringTestMethodNamed':
        return $Function($BimodalClass.$m$nullableStringTestMethodNamed);
      case 'finalString':
        return $String($value.finalString);
      case 'string':
        return $String($value.string);
      case 'staticFinalString':
        return $String(BimodalClass.staticFinalString);
      case 'staticString':
        return $String(BimodalClass.staticString);
      case 'finalNullableString':
        return () {
          final $ = $value.finalNullableString;
          return $ == null ? const $null() : $String($);
        }();
      case 'nullableString':
        return () {
          final $ = $value.nullableString;
          return $ == null ? const $null() : $String($);
        }();
      case 'staticFinalNullableString':
        return () {
          final $ = BimodalClass.staticFinalNullableString;
          return $ == null ? const $null() : $String($);
        }();
      case 'staticNullableString':
        return () {
          final $ = BimodalClass.staticNullableString;
          return $ == null ? const $null() : $String($);
        }();
      case 'stringGetter':
        return $String($value.stringGetter);
      case 'staticStringGetter':
        return $String(BimodalClass.staticStringGetter);
      case 'nullableStringGetter':
        return () {
          final $ = $value.nullableStringGetter;
          return $ == null ? const $null() : $String($);
        }();
      case 'staticNullableStringGetter':
        return () {
          final $ = BimodalClass.staticNullableStringGetter;
          return $ == null ? const $null() : $String($);
        }();
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
      case 'string':
        $value.string = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! String ? ($.$reified as String) : $$;
        }(value);
      case 'staticString':
        BimodalClass.staticString = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! String ? ($.$reified as String) : $$;
        }(value);
      case 'nullableString':
        $value.nullableString = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is $null
              ? null
              : $$ is! String?
                  ? ($.$reified as String?)
                  : $$;
        }(value);
      case 'staticNullableString':
        BimodalClass.staticNullableString = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is $null
              ? null
              : $$ is! String?
                  ? ($.$reified as String?)
                  : $$;
        }(value);
      case 'stringSetter':
        $value.stringSetter = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! String ? ($.$reified as String) : $$;
        }(value);
      case 'staticStringSetter':
        BimodalClass.staticStringSetter = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! String ? ($.$reified as String) : $$;
        }(value);
      case 'nullableStringSetter':
        $value.nullableStringSetter = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is $null
              ? null
              : $$ is! String?
                  ? ($.$reified as String?)
                  : $$;
        }(value);
      case 'staticNullableStringSetter':
        BimodalClass.staticNullableStringSetter = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is $null
              ? null
              : $$ is! String?
                  ? ($.$reified as String?)
                  : $$;
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

  static $Value? $m$stringTestMethod(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as BimodalClass).stringTestMethod(
      ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is! String ? ($.$reified as String) : $$;
      }(args[0]!),
      ($Value? $) {
        final $$ = ($ as dynamic);
        return $ == null
            ? null
            : $$ is $null
                ? null
                : $$ is! String?
                    ? ($.$reified as String?)
                    : $$;
      }(args[1]),
      ($Value? $) {
        final $$ = ($ as dynamic);
        return $ == null
            ? 's3Default'
            : $$ is! String
                ? ($.$reified as String)
                : $$;
      }(args[2]),
    ));
  }

  static $Value? $m$nullableStringTestMethod(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as BimodalClass).nullableStringTestMethod(
      ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is $null
            ? null
            : $$ is! String?
                ? ($.$reified as String?)
                : $$;
      }(args[0]!),
      ($Value? $) {
        final $$ = ($ as dynamic);
        return $ == null
            ? null
            : $$ is $null
                ? null
                : $$ is! String?
                    ? ($.$reified as String?)
                    : $$;
      }(args[1]),
      ($Value? $) {
        final $$ = ($ as dynamic);
        return $ == null
            ? 's3Default'
            : $$ is $null
                ? null
                : $$ is! String?
                    ? ($.$reified as String?)
                    : $$;
      }(args[2]),
    ));
  }

  static $Value? $m$stringTestMethodNamed(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as BimodalClass).stringTestMethodNamed(
      s1: ($Value? $) {
        final $$ = ($ as dynamic);
        return $ == null
            ? 's1Default'
            : $$ is! String
                ? ($.$reified as String)
                : $$;
      }(args[0]),
      s2: ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is! String ? ($.$reified as String) : $$;
      }(args[1]!),
    ));
  }

  static $Value? $m$nullableStringTestMethodNamed(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String(
        (target!.$value as BimodalClass).nullableStringTestMethodNamed(
      s1: ($Value? $) {
        final $$ = ($ as dynamic);
        return $ == null
            ? null
            : $$ is $null
                ? null
                : $$ is! String?
                    ? ($.$reified as String?)
                    : $$;
      }(args[0]),
      s2: ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is $null
            ? null
            : $$ is! String?
                ? ($.$reified as String?)
                : $$;
      }(args[1]!),
      s3: ($Value? $) {
        final $$ = ($ as dynamic);
        return $ == null
            ? 's3Default'
            : $$ is $null
                ? null
                : $$ is! String?
                    ? ($.$reified as String?)
                    : $$;
      }(args[2]),
    ));
  }

  static $Value? $g$staticFinalString(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String(BimodalClass.staticFinalString);
  }

  static $Value? $g$staticString(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String(BimodalClass.staticString);
  }

  static $Value? $s$staticString(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    BimodalClass.staticString = ($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! String ? ($.$reified as String) : $$;
    }(args[0]!);
    return null;
  }

  static $Value? $g$_staticAccessedString(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String(BimodalClass._staticAccessedString);
  }

  static $Value? $s$_staticAccessedString(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    BimodalClass._staticAccessedString = ($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! String ? ($.$reified as String) : $$;
    }(args[0]!);
    return null;
  }

  static $Value? $g$staticFinalNullableString(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return () {
      final $ = BimodalClass.staticFinalNullableString;
      return $ == null ? const $null() : $String($);
    }();
  }

  static $Value? $g$staticNullableString(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return () {
      final $ = BimodalClass.staticNullableString;
      return $ == null ? const $null() : $String($);
    }();
  }

  static $Value? $s$staticNullableString(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    BimodalClass.staticNullableString = ($Value $) {
      final $$ = ($ as dynamic);
      return $$ is $null
          ? null
          : $$ is! String?
              ? ($.$reified as String?)
              : $$;
    }(args[0]!);
    return null;
  }

  static $Value? $g$_staticAccessedNullableString(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return () {
      final $ = BimodalClass._staticAccessedNullableString;
      return $ == null ? const $null() : $String($);
    }();
  }

  static $Value? $s$_staticAccessedNullableString(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    BimodalClass._staticAccessedNullableString = ($Value $) {
      final $$ = ($ as dynamic);
      return $$ is $null
          ? null
          : $$ is! String?
              ? ($.$reified as String?)
              : $$;
    }(args[0]!);
    return null;
  }

  static $Value? $g$staticStringGetter(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String(BimodalClass.staticStringGetter);
  }

  static $Value? $s$staticStringSetter(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    BimodalClass.staticStringSetter = ($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! String ? ($.$reified as String) : $$;
    }(args[0]!);
    return null;
  }

  static $Value? $g$staticNullableStringGetter(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return () {
      final $ = BimodalClass.staticNullableStringGetter;
      return $ == null ? const $null() : $String($);
    }();
  }

  static $Value? $s$staticNullableStringSetter(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    BimodalClass.staticNullableStringSetter = ($Value $) {
      final $$ = ($ as dynamic);
      return $$ is $null
          ? null
          : $$ is! String?
              ? ($.$reified as String?)
              : $$;
    }(args[0]!);
    return null;
  }

  @override
  String stringTestMethod(
    String s1, [
    String? s2,
    String s3 = 's3Default',
  ]) {
    return $value.stringTestMethod(
      s1,
      s2,
      s3,
    );
  }

  @override
  String nullableStringTestMethod(
    String? s1, [
    String? s2,
    String? s3 = 's3Default',
  ]) {
    return $value.nullableStringTestMethod(
      s1,
      s2,
      s3,
    );
  }

  @override
  String stringTestMethodNamed({
    String s1 = 's1Default',
    required String s2,
  }) {
    return $value.stringTestMethodNamed(
      s1: s1,
      s2: s2,
    );
  }

  @override
  String nullableStringTestMethodNamed({
    String? s1,
    required String? s2,
    String? s3 = 's3Default',
  }) {
    return $value.nullableStringTestMethodNamed(
      s1: s1,
      s2: s2,
      s3: s3,
    );
  }

  @override
  String toString() {
    return $value.toString();
  }

  @override
  String get finalString => $value.finalString;

  @override
  String get string => $value.string;

  @override
  set string(String value) => $value.string = value;

  @override
  String get _accessedString => $value._accessedString;

  @override
  set _accessedString(String value) => $value._accessedString = value;

  @override
  String? get finalNullableString => $value.finalNullableString;

  @override
  String? get nullableString => $value.nullableString;

  @override
  set nullableString(String? value) => $value.nullableString = value;

  @override
  String? get _accessedNullableString => $value._accessedNullableString;

  @override
  set _accessedNullableString(String? value) =>
      $value._accessedNullableString = value;

  @override
  String get stringGetter => $value.stringGetter;

  @override
  set stringSetter(String value) => $value.stringSetter = value;

  @override
  String? get nullableStringGetter => $value.nullableStringGetter;

  @override
  set nullableStringSetter(String? value) =>
      $value.nullableStringSetter = value;
}
