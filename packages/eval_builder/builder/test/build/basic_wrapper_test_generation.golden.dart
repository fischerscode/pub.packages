part of 'basic_wrapper_test_generation.dart';

class $BasicClass implements $Instance {
  const $BasicClass.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:my_eval/types.dart',
    'BasicClass',
  ).ref;

  static final $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: ['finalString'.param(CoreTypes.string.ref.annotateNullable)],
          namedParams: [
            'finalNullableString'.param(CoreTypes.string.ref.annotate)
          ],
          generics: {},
        ),
        isFactory: false,
      )
    },
    methods: {
      'stringTestMethod': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [
            's1'.param(CoreTypes.string.ref.annotateNullable),
            's2'.paramOptional(CoreTypes.string.ref.annotate),
            's3'.paramOptional(CoreTypes.string.ref.annotateNullable),
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'nullableStringTestMethod': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [
            's1'.param(CoreTypes.string.ref.annotate),
            's2'.paramOptional(CoreTypes.string.ref.annotate),
            's3'.paramOptional(CoreTypes.string.ref.annotate),
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'stringTestMethodNamed': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [
            's1'.paramOptional(CoreTypes.string.ref.annotateNullable),
            's2'.param(CoreTypes.string.ref.annotateNullable),
          ],
          generics: {},
        ),
        isStatic: false,
      ),
      'nullableStringTestMethodNamed': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [
            's1'.paramOptional(CoreTypes.string.ref.annotate),
            's2'.param(CoreTypes.string.ref.annotate),
            's3'.paramOptional(CoreTypes.string.ref.annotate),
          ],
          generics: {},
        ),
        isStatic: false,
      ),
    },
    getters: {
      'finalString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'string': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      '_accessedString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'staticFinalString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'staticString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'finalNullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'nullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      '_accessedNullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'staticFinalNullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'staticNullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'stringGetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'staticStringGetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'nullableStringGetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'staticNullableStringGetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
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
          returns: $type.annotate,
          params: ['_string'.param(CoreTypes.string.ref.annotateNullable)],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      '_accessedString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [
            '__accessedString'.param(CoreTypes.string.ref.annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'staticString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [
            '_staticString'.param(CoreTypes.string.ref.annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'nullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: ['_nullableString'.param(CoreTypes.string.ref.annotate)],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      '_accessedNullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [
            '__accessedNullableString'.param(CoreTypes.string.ref.annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'staticNullableString': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [
            '_staticNullableString'.param(CoreTypes.string.ref.annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'stringSetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: ['value'.param(CoreTypes.string.ref.annotateNullable)],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'staticStringSetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: ['value'.param(CoreTypes.string.ref.annotateNullable)],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'nullableStringSetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: ['value'.param(CoreTypes.string.ref.annotate)],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'staticNullableStringSetter': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: ['value'.param(CoreTypes.string.ref.annotate)],
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
  final BasicClass $value;

  @override
  get $reified => $value;

  static $Value? $new(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $BasicClass.wrap(BasicClass(
      () {
        final $ = args[0];
        final $$ = (args[0] as dynamic);
        return $$ is! String ? ($?.$reified as String) : $$;
      }(),
      finalNullableString: () {
        final $ = args[1];
        final $$ = (args[1] as dynamic);
        return $$ is! String? ? ($?.$reified as String?) : $$;
      }(),
    ));
  }

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
      case 'stringTestMethod':
        return $Function($BasicClass._stringTestMethod);
      case 'nullableStringTestMethod':
        return $Function($BasicClass._nullableStringTestMethod);
      case 'stringTestMethodNamed':
        return $Function($BasicClass._stringTestMethodNamed);
      case 'nullableStringTestMethodNamed':
        return $Function($BasicClass._nullableStringTestMethodNamed);
      case 'finalString':
        return $String($value.finalString);
      case 'string':
        return $String($value.string);
      case '_accessedString':
        return $String($value._accessedString);
      case 'staticFinalString':
        return $String(BasicClass.staticFinalString);
      case 'staticString':
        return $String(BasicClass.staticString);
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
      case '_accessedNullableString':
        return () {
          final $ = $value._accessedNullableString;
          return $ == null ? const $null() : $String($);
        }();
      case 'staticFinalNullableString':
        return () {
          final $ = BasicClass.staticFinalNullableString;
          return $ == null ? const $null() : $String($);
        }();
      case 'staticNullableString':
        return () {
          final $ = BasicClass.staticNullableString;
          return $ == null ? const $null() : $String($);
        }();
      case 'stringGetter':
        return $String($value.stringGetter);
      case 'staticStringGetter':
        return $String(BasicClass.staticStringGetter);
      case 'nullableStringGetter':
        return () {
          final $ = $value.nullableStringGetter;
          return $ == null ? const $null() : $String($);
        }();
      case 'staticNullableStringGetter':
        return () {
          final $ = BasicClass.staticNullableStringGetter;
          return $ == null ? const $null() : $String($);
        }();
    }
  }

  @override
  $Value? $setProperty(
    Runtime runtime,
    String identifier,
    $Value value,
  ) {
    switch (identifier) {
      case 'string':
        $value.string = () {
          final $ = value;
          final $$ = (value as dynamic);
          return $$ is! String ? ($.$reified as String) : $$;
        }();
      case '_accessedString':
        $value._accessedString = () {
          final $ = value;
          final $$ = (value as dynamic);
          return $$ is! String ? ($.$reified as String) : $$;
        }();
      case 'staticString':
        BasicClass.staticString = () {
          final $ = value;
          final $$ = (value as dynamic);
          return $$ is! String ? ($.$reified as String) : $$;
        }();
      case 'nullableString':
        $value.nullableString = () {
          final $ = value;
          final $$ = (value as dynamic);
          return $$ is! String? ? ($.$reified as String?) : $$;
        }();
      case '_accessedNullableString':
        $value._accessedNullableString = () {
          final $ = value;
          final $$ = (value as dynamic);
          return $$ is! String? ? ($.$reified as String?) : $$;
        }();
      case 'staticNullableString':
        BasicClass.staticNullableString = () {
          final $ = value;
          final $$ = (value as dynamic);
          return $$ is! String? ? ($.$reified as String?) : $$;
        }();
      case 'stringSetter':
        $value.stringSetter = () {
          final $ = value;
          final $$ = (value as dynamic);
          return $$ is! String ? ($.$reified as String) : $$;
        }();
      case 'staticStringSetter':
        BasicClass.staticStringSetter = () {
          final $ = value;
          final $$ = (value as dynamic);
          return $$ is! String ? ($.$reified as String) : $$;
        }();
      case 'nullableStringSetter':
        $value.nullableStringSetter = () {
          final $ = value;
          final $$ = (value as dynamic);
          return $$ is! String? ? ($.$reified as String?) : $$;
        }();
      case 'staticNullableStringSetter':
        BasicClass.staticNullableStringSetter = () {
          final $ = value;
          final $$ = (value as dynamic);
          return $$ is! String? ? ($.$reified as String?) : $$;
        }();
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) {
    return runtime.lookupType($type.spec!);
  }

  static $Value? _stringTestMethod(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as BasicClass).stringTestMethod(
      () {
        final $ = args[0];
        final $$ = (args[0] as dynamic);
        return $$ is! String ? ($?.$reified as String) : $$;
      }(),
      () {
        final $ = args[1];
        final $$ = (args[1] as dynamic);
        return $$ is! String? ? ($?.$reified as String?) : $$;
      }(),
      () {
        final $ = args[2];
        final $$ = (args[2] as dynamic);
        return $$ is! String ? ($?.$reified as String) : $$;
      }(),
    ));
  }

  static $Value? _nullableStringTestMethod(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as BasicClass).nullableStringTestMethod(
      () {
        final $ = args[0];
        final $$ = (args[0] as dynamic);
        return $$ is! String? ? ($?.$reified as String?) : $$;
      }(),
      () {
        final $ = args[1];
        final $$ = (args[1] as dynamic);
        return $$ is! String? ? ($?.$reified as String?) : $$;
      }(),
      () {
        final $ = args[2];
        final $$ = (args[2] as dynamic);
        return $$ is! String? ? ($?.$reified as String?) : $$;
      }(),
    ));
  }

  static $Value? _stringTestMethodNamed(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as BasicClass).stringTestMethodNamed(
      s1: () {
        final $ = args[0];
        final $$ = (args[0] as dynamic);
        return $$ is! String ? ($?.$reified as String) : $$;
      }(),
      s2: () {
        final $ = args[1];
        final $$ = (args[1] as dynamic);
        return $$ is! String ? ($?.$reified as String) : $$;
      }(),
    ));
  }

  static $Value? _nullableStringTestMethodNamed(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as BasicClass).nullableStringTestMethodNamed(
      s1: () {
        final $ = args[0];
        final $$ = (args[0] as dynamic);
        return $$ is! String? ? ($?.$reified as String?) : $$;
      }(),
      s2: () {
        final $ = args[1];
        final $$ = (args[1] as dynamic);
        return $$ is! String? ? ($?.$reified as String?) : $$;
      }(),
      s3: () {
        final $ = args[2];
        final $$ = (args[2] as dynamic);
        return $$ is! String? ? ($?.$reified as String?) : $$;
      }(),
    ));
  }
}
