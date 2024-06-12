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
    methods: {},
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
        return $String($value.finalNullableString);
      case 'nullableString':
        return $String($value.nullableString);
      case '_accessedNullableString':
        return $String($value._accessedNullableString);
      case 'staticFinalNullableString':
        return $String(BasicClass.staticFinalNullableString);
      case 'staticNullableString':
        return $String(BasicClass.staticNullableString);
      case 'stringGetter':
        return $String($value.stringGetter);
      case 'staticStringGetter':
        return $String(BasicClass.staticStringGetter);
      case 'nullableStringGetter':
        return $String($value.nullableStringGetter);
      case 'staticNullableStringGetter':
        return $String(BasicClass.staticNullableStringGetter);
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
}
