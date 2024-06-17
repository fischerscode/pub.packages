part of 'typedef_wrapper_test_generation.dart';

class $TypeDefTestClass implements TypeDefTestClass, $Instance {
  $TypeDefTestClass.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:my_eval/types.dart',
    'TypeDefTestClass',
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
      isAbstract: false,
      generics: {},
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: $type.ref.annotate,
          params: [
            'field'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:typed_data',
                  'ByteBuffer',
                ),
                [],
              ),
              nullable: false,
            ))
          ],
          namedParams: [
            'fieldNullable'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:typed_data',
                  'ByteBuffer',
                ),
                [],
              ),
              nullable: true,
            ))
          ],
          generics: {},
        ),
        isFactory: false,
      )
    },
    methods: {
      'test': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'dart:typed_data',
                'ByteBuffer',
              ),
              [],
            ),
            nullable: false,
          ),
          params: [
            't'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:typed_data',
                  'ByteBuffer',
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
      'staticTest': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'dart:typed_data',
                'ByteBuffer',
              ),
              [],
            ),
            nullable: false,
          ),
          params: [
            't'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:typed_data',
                  'ByteBuffer',
                ),
                [],
              ),
              nullable: false,
            ))
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
    },
    getters: {
      'field': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'dart:typed_data',
                'ByteBuffer',
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
      'fieldNullable': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'dart:typed_data',
                'ByteBuffer',
              ),
              [],
            ),
            nullable: true,
          ),
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
    },
    setters: {},
    bridge: false,
    wrap: true,
  );

  @override
  final TypeDefTestClass $value;

  late final $Instance _$superWrapper = $Object($value);

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'TypeDefTestClass.staticTest',
      $TypeDefTestClass.$m$staticTest,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'TypeDefTestClass.',
      $TypeDefTestClass.$new,
    );
  }

  @override
  get $reified => $value;

  static $Value? $new(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $TypeDefTestClass.wrap(TypeDefTestClass(
      ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is! typed.ByteBuffer ? ($.$reified as typed.ByteBuffer) : $$;
      }(args[0]!),
      fieldNullable: ($Value $) {
        final $$ = ($ as dynamic);
        return $$ is $null
            ? null
            : $$ is! typed.ByteBuffer?
                ? ($.$reified as typed.ByteBuffer?)
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
      case 'test':
        return $Function($TypeDefTestClass.$m$test);
      case 'staticTest':
        return $Function($TypeDefTestClass.$m$staticTest);
      case 'field':
        return $ByteBuffer.wrap($value.field);
      case 'fieldNullable':
        return () {
          final $ = $value.fieldNullable;
          return $ == null ? const $null() : $ByteBuffer.wrap($);
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

  static $Value? $m$test(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $ByteBuffer
        .wrap((target!.$value as TypeDefTestClass).test(($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! typed.ByteBuffer ? ($.$reified as typed.ByteBuffer) : $$;
    }(args[0]!)));
  }

  static $Value? $m$staticTest(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $ByteBuffer.wrap(TypeDefTestClass.staticTest(($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! typed.ByteBuffer ? ($.$reified as typed.ByteBuffer) : $$;
    }(args[0]!)));
  }

  @override
  typed.ByteBuffer test(typed.ByteBuffer t) {
    return $value.test(t);
  }

  @override
  String toString() {
    return $value.toString();
  }

  @override
  typed.ByteBuffer get field => $value.field;

  @override
  typed.ByteBuffer? get fieldNullable => $value.fieldNullable;
}
