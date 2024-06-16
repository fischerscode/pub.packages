part of 'discover_wrapper_test_generation.dart';

class WrapWrapped1 implements $Instance {
  WrapWrapped1.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:my_eval/types.dart',
    'Wrapped1',
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
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  @override
  final Wrapped1 $value;

  late final $Instance _$superWrapper = $Object($value);

  @override
  get $reified => $value;

  static $Value? $new(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return WrapWrapped1.wrap(Wrapped1());
  }

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
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
}

class $Wrapped2 implements $Instance {
  $Wrapped2.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:my_eval/types.dart',
    'Wrapped2',
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
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  @override
  final Wrapped2 $value;

  late final $Instance _$superWrapper = $Object($value);

  @override
  get $reified => $value;

  static $Value? $new(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $Wrapped2.wrap(Wrapped2());
  }

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
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
}

class $Parent implements $Instance {
  $Parent.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:my_eval/types.dart',
    'Parent',
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
      'child1': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            WrapWrapped1.$type,
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'child1Nullable': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            WrapWrapped1.$type,
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'child2': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            $Wrapped2.$type,
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'child2Nullable': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            $Wrapped2.$type,
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
      'child1': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_child1'.param(BridgeTypeRef(
              WrapWrapped1.$type,
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'child1Nullable': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_child1Nullable'.param(BridgeTypeRef(
              WrapWrapped1.$type,
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'child2': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_child2'.param(BridgeTypeRef(
              $Wrapped2.$type,
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'child2Nullable': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_child2Nullable'.param(BridgeTypeRef(
              $Wrapped2.$type,
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
  final Parent $value;

  late final $Instance _$superWrapper = $Object($value);

  @override
  get $reified => $value;

  static $Value? $new(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $Parent.wrap(Parent());
  }

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
      case 'child1':
        return WrapWrapped1.wrap($value.child1);
      case 'child1Nullable':
        return () {
          final $ = $value.child1Nullable;
          return $ == null ? const $null() : WrapWrapped1.wrap($);
        }();
      case 'child2':
        return $Wrapped2.wrap($value.child2);
      case 'child2Nullable':
        return () {
          final $ = $value.child2Nullable;
          return $ == null ? const $null() : $Wrapped2.wrap($);
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
      case 'child1':
        $value.child1 = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! Wrapped1 ? ($.$reified as Wrapped1) : $$;
        }(value);
      case 'child1Nullable':
        $value.child1Nullable = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is $null
              ? null
              : $$ is! Wrapped1?
                  ? ($.$reified as Wrapped1?)
                  : $$;
        }(value);
      case 'child2':
        $value.child2 = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! Wrapped2 ? ($.$reified as Wrapped2) : $$;
        }(value);
      case 'child2Nullable':
        $value.child2Nullable = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is $null
              ? null
              : $$ is! Wrapped2?
                  ? ($.$reified as Wrapped2?)
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
}
