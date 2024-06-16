part of 'abstract_wrapper_test_wrapped.dart';

class $BaseClass implements BaseClass, $Instance {
  $BaseClass.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:my_eval/types.dart',
    'BaseClass',
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
    methods: {
      'methodFromBase': BridgeMethodDef(
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
      'method2FromBase': BridgeMethodDef(
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
    },
    getters: {
      'propertyFromBase': BridgeMethodDef(
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
      'property2FromBase': BridgeMethodDef(
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
    },
    setters: {
      'propertyFromBase': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_propertyFromBase'.param(BridgeTypeRef(
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
      'property2FromBase': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_property2FromBase'.param(BridgeTypeRef(
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
    },
    bridge: false,
    wrap: true,
  );

  @override
  final BaseClass $value;

  late final $Instance _$superWrapper = $Object($value);

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'BaseClass.',
      $BaseClass.$new,
    );
  }

  @override
  get $reified => $value;

  static $Value? $new(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $BaseClass.wrap(BaseClass());
  }

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
      case 'methodFromBase':
        return $Function($BaseClass._methodFromBase);
      case 'method2FromBase':
        return $Function($BaseClass._method2FromBase);
      case 'propertyFromBase':
        return $String($value.propertyFromBase);
      case 'property2FromBase':
        return $String($value.property2FromBase);
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
      case 'propertyFromBase':
        $value.propertyFromBase = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! String ? ($.$reified as String) : $$;
        }(value);
      case 'property2FromBase':
        $value.property2FromBase = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! String ? ($.$reified as String) : $$;
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

  static $Value? _methodFromBase(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as BaseClass).methodFromBase());
  }

  static $Value? _method2FromBase(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as BaseClass).method2FromBase());
  }

  @override
  String methodFromBase() {
    return $value.methodFromBase();
  }

  @override
  String method2FromBase() {
    return $value.method2FromBase();
  }

  @override
  String toString() {
    return $value.toString();
  }

  @override
  String get propertyFromBase => $value.propertyFromBase;

  @override
  set propertyFromBase(String value) => $value.propertyFromBase = value;

  @override
  String get property2FromBase => $value.property2FromBase;

  @override
  set property2FromBase(String value) => $value.property2FromBase = value;
}

class $TestedClass implements TestedClass, $Instance {
  $TestedClass.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:my_eval/types.dart',
    'TestedClass',
  );

  static final $declaration = BridgeClassDef(
    BridgeClassType(
      $type.ref,
      $extends: BridgeTypeRef($BaseClass.$type),
      $implements: [],
      $with: [],
      isAbstract: true,
    ),
    constructors: {},
    methods: {
      'methodFromClass': BridgeMethodDef(
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
      'methodFromBase': BridgeMethodDef(
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
    },
    getters: {
      'propertyFromClass': BridgeMethodDef(
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
      'propertyFromBase': BridgeMethodDef(
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
    },
    setters: {
      'propertyFromClass': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_propertyFromClass'.param(BridgeTypeRef(
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
      'propertyFromBase': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_propertyFromBase'.param(BridgeTypeRef(
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
    },
    bridge: false,
    wrap: true,
  );

  @override
  final TestedClass $value;

  late final $Instance _$superWrapper = $BaseClass.wrap($value);

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {}
  @override
  get $reified => $value;

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
      case 'methodFromClass':
        return $Function($TestedClass._methodFromClass);
      case 'methodFromBase':
        return $Function($TestedClass._methodFromBase);
      case 'propertyFromClass':
        return $String($value.propertyFromClass);
      case 'propertyFromBase':
        return $String($value.propertyFromBase);
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
      case 'propertyFromClass':
        $value.propertyFromClass = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! String ? ($.$reified as String) : $$;
        }(value);
      case 'propertyFromBase':
        $value.propertyFromBase = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! String ? ($.$reified as String) : $$;
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

  static $Value? _methodFromClass(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as TestedClass).methodFromClass());
  }

  static $Value? _methodFromBase(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as TestedClass).methodFromBase());
  }

  @override
  String methodFromClass() {
    return $value.methodFromClass();
  }

  @override
  String methodFromBase() {
    return $value.methodFromBase();
  }

  @override
  String method2FromBase() {
    return $value.method2FromBase();
  }

  @override
  String toString() {
    return $value.toString();
  }

  @override
  String get propertyFromClass => $value.propertyFromClass;

  @override
  set propertyFromClass(String value) => $value.propertyFromClass = value;

  @override
  String get propertyFromBase => $value.propertyFromBase;

  @override
  set propertyFromBase(String value) => $value.propertyFromBase = value;

  @override
  String get property2FromBase => $value.property2FromBase;

  @override
  set property2FromBase(String value) => $value.property2FromBase = value;
}
