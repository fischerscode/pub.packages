part of 'abstract_wrapper_test_wrapped.dart';

class $BaseClass implements BaseClass, $Instance {
  const $BaseClass.wrap(this.$value);

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
      case 'toString':
        return $Function($BaseClass._toString);
      case 'propertyFromBase':
        return $String($value.propertyFromBase);
      case 'property2FromBase':
        return $String($value.property2FromBase);
    }
  }

  @override
  $Value? $setProperty(
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

  static $Value? _toString(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as BaseClass).toString());
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
  const $TestedClass.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:my_eval/types.dart',
    'TestedClass',
  );

  static final $declaration = BridgeClassDef(
    BridgeClassType(
      $type.ref,
      $extends: BridgeTypeRef(BridgeTypeSpec(
        'dart:core',
        'Object',
      )),
      $implements: [BridgeTypeRef($BaseClass.$type)],
      $with: [],
      isAbstract: true,
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
      case 'toString':
        return $Function($TestedClass._toString);
      case 'method2FromBase':
        return $Function($TestedClass._method2FromBase);
      case 'propertyFromClass':
        return $String($value.propertyFromClass);
      case 'propertyFromBase':
        return $String($value.propertyFromBase);
      case 'property2FromBase':
        return $String($value.property2FromBase);
    }
  }

  @override
  $Value? $setProperty(
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
      case 'property2FromBase':
        $value.property2FromBase = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! String ? ($.$reified as String) : $$;
        }(value);
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

  static $Value? _toString(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as TestedClass).toString());
  }

  static $Value? _method2FromBase(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as TestedClass).method2FromBase());
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
  String toString() {
    return $value.toString();
  }

  @override
  String method2FromBase() {
    return $value.method2FromBase();
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
