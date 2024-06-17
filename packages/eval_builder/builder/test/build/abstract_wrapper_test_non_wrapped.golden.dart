part of 'abstract_wrapper_test_non_wrapped.dart';

class $TestedClass implements TestedClass, $Instance {
  $TestedClass.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:my_eval/types.dart',
    'TestedClass',
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
      isAbstract: true,
      generics: {},
    ),
    constructors: {},
    methods: {
      'methodFromClass': BridgeMethodDef(
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
      'methodFromBase': BridgeMethodDef(
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
      'method2FromBase': BridgeMethodDef(
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
    },
    getters: {
      'propertyFromClass': BridgeMethodDef(
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
      'propertyFromBase': BridgeMethodDef(
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
      'property2FromBase': BridgeMethodDef(
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
    },
    setters: {
      'propertyFromClass': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_propertyFromClass'.param(BridgeTypeAnnotation(
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
      'propertyFromBase': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_propertyFromBase'.param(BridgeTypeAnnotation(
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
      'property2FromBase': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_property2FromBase'.param(BridgeTypeAnnotation(
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
    },
    bridge: false,
    wrap: true,
  );

  @override
  final TestedClass $value;

  late final $Instance _$superWrapper = $Object($value);

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
        return $Function($TestedClass.$m$methodFromClass);
      case 'methodFromBase':
        return $Function($TestedClass.$m$methodFromBase);
      case 'method2FromBase':
        return $Function($TestedClass.$m$method2FromBase);
      case 'propertyFromClass':
        return $String($value.propertyFromClass);
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

  static $Value? $m$methodFromClass(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as TestedClass).methodFromClass());
  }

  static $Value? $m$methodFromBase(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $String((target!.$value as TestedClass).methodFromBase());
  }

  static $Value? $m$method2FromBase(
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
