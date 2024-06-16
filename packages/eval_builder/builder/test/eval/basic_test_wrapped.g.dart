// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_test_wrapped.dart';

// **************************************************************************
// WrapperGenerator
// **************************************************************************

class $TestClass implements $Instance {
  $TestClass.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:myPackage/file.dart',
    'TestClass',
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
          params: [
            'value'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isFactory: false,
      )
    },
    methods: {
      'add': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            'other'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      )
    },
    getters: {
      'value': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'int',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'value2': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeRef(
            BridgeTypeSpec(
              'dart:core',
              'int',
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
      'value': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_value'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'value2': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            'newValue'.param(BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
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
  final TestClass $value;

  late final $Instance _$superWrapper = $Object($value);

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'TestClass.',
      $TestClass.$new,
    );
  }

  @override
  get $reified => $value;

  static $Value? $new(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $TestClass.wrap(TestClass(($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!)));
  }

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
      case 'add':
        return $Function($TestClass._add);
      case 'value':
        return $int($value.value);
      case 'value2':
        return $int($value.value2);
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
      case 'value':
        $value.value = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! int ? ($.$reified as int) : $$;
        }(value);
      case 'value2':
        $value.value2 = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! int ? ($.$reified as int) : $$;
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

  static $Value? _add(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return () {
      (target!.$value as TestClass).add(($Value $) {
        final $$ = ($ as dynamic);
        return $$ is! int ? ($.$reified as int) : $$;
      }(args[0]!));
      return null;
    }();
  }
}
