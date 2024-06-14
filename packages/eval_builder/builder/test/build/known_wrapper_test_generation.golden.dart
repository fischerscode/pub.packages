part of 'known_wrapper_test_generation.dart';

class $ToWrap implements $Instance {
  const $ToWrap.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:my_eval/types.dart',
    'ToWrap',
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
          returns: BridgeTypeRef(
            CustomStubWrapper.spec,
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'childNullable': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            CustomStubWrapper.spec,
            [],
          ).annotate,
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
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_child'.param(BridgeTypeRef(
              CustomStubWrapper.spec,
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'childNullable': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_childNullable'.param(BridgeTypeRef(
              CustomStubWrapper.spec,
              [],
            ).annotate)
          ],
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
      case 'toString':
        return $Function($ToWrap._toString);
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
    return runtime.lookupType($type);
  }

  static $Value? _toString(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as ToWrap).toString());
  }
}
