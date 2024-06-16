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
          returns: $type.ref.annotateNullable,
          params: [
            'finalString'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [
            'finalNullableString'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotate)
          ],
          generics: {},
        ),
        isFactory: false,
      )
    },
    methods: {
      'stringTestMethod': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotateNullable,
          params: [
            's1'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotateNullable),
            's2'.paramOptional(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotate),
            's3'.paramOptional(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotateNullable),
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'nullableStringTestMethod': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotateNullable,
          params: [
            's1'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotate),
            's2'.paramOptional(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotate),
            's3'.paramOptional(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotate),
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'stringTestMethodNamed': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [
            's1'.paramOptional(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotateNullable),
            's2'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotateNullable),
          ],
          generics: {},
        ),
        isStatic: false,
      ),
      'nullableStringTestMethodNamed': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [
            's1'.paramOptional(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotate),
            's2'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotate),
            's3'.paramOptional(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotate),
          ],
          generics: {},
        ),
        isStatic: false,
      ),
    },
    getters: {
      'finalString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'string': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'staticFinalString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'staticString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'finalNullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'nullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'staticFinalNullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'staticNullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'stringGetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'staticStringGetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'nullableStringGetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'staticNullableStringGetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotate,
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
            '_string'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotateNullable)
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
            '_staticString'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotateNullable)
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
            '_nullableString'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotate)
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
            '_staticNullableString'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotate)
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
            'value'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotateNullable)
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
            'value'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotateNullable)
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
            'value'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotate)
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
            'value'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotate)
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
        return $Function($BimodalClass._stringTestMethod);
      case 'nullableStringTestMethod':
        return $Function($BimodalClass._nullableStringTestMethod);
      case 'stringTestMethodNamed':
        return $Function($BimodalClass._stringTestMethodNamed);
      case 'nullableStringTestMethodNamed':
        return $Function($BimodalClass._nullableStringTestMethodNamed);
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

  static $Value? _stringTestMethod(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as BimodalClass).stringTestMethod(
      ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is! String ? ($.$reified as String) : $$;
      }(args[0]!),
      ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is $null
            ? null
            : $$ is! String?
                ? ($.$reified as String?)
                : $$;
      }(args[1]!),
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

  static $Value? _nullableStringTestMethod(
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
      ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is $null
            ? null
            : $$ is! String?
                ? ($.$reified as String?)
                : $$;
      }(args[1]!),
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

  static $Value? _stringTestMethodNamed(
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

  static $Value? _nullableStringTestMethodNamed(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String(
        (target!.$value as BimodalClass).nullableStringTestMethodNamed(
      s1: ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is $null
            ? null
            : $$ is! String?
                ? ($.$reified as String?)
                : $$;
      }(args[0]!),
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
