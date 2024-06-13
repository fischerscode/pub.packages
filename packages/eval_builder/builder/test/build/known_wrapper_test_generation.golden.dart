part of 'known_wrapper_test_generation.dart';

class $ToWrap implements $Instance {
  const $ToWrap.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:my_eval/types.dart',
    'ToWrap',
  ).ref;

  static final $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isFactory: false,
      )
    },
    methods: {},
    getters: {
      'child': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'childNullable': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
    },
    setters: {
      'child': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: ['_child'.param(CustomStubWrapper.spec.ref.annotateNullable)],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'childNullable': BridgeMethodDef(
        BridgeFunctionDef(
          returns: $type.annotate,
          params: ['_childNullable'.param(CustomStubWrapper.spec.ref.annotate)],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
    },
    bridge: false,
    wrap: true,
  );

  @override
  final ToWrap $value;

  @override
  get $reified => $value;

  static $Value? $new(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $ToWrap.wrap(ToWrap());
  }

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
      case 'child':
        return CustomStubWrapper.wrap($value.child);
      case 'childNullable':
        return () {
          final $ = $value.childNullable;
          return $ == null ? const $null() : CustomStubWrapper.wrap($);
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
      case 'child':
        $value.child = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! CustomWrapped ? ($.$reified as CustomWrapped) : $$;
        }(value);
      case 'childNullable':
        $value.childNullable = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is $null
              ? null
              : $$ is! CustomWrapped?
                  ? ($.$reified as CustomWrapped?)
                  : $$;
        }(value);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) {
    return runtime.lookupType($type.spec!);
  }
}
