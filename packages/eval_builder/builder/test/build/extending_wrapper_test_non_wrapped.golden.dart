part of 'extending_wrapper_test_non_wrapped.dart';

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
      'methodFromClass': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'methodFromBase': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
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

  static $Value? $new(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $TestedClass.wrap(TestedClass());
  }

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
      case 'propertyFromClass':
        return $String($value.propertyFromClass);
      case 'propertyFromBase':
        return $String($value.propertyFromBase);
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
    return () {
      (target!.$value as TestedClass).methodFromClass();
      return null;
    }();
  }

  static $Value? _methodFromBase(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return () {
      (target!.$value as TestedClass).methodFromBase();
      return null;
    }();
  }

  static $Value? _toString(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as TestedClass).toString());
  }

  @override
  void methodFromClass() {
    return $value.methodFromClass();
  }

  @override
  void methodFromBase() {
    return $value.methodFromBase();
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
}
