part of 'enum_wrapper_test_generation.dart';

class $TestEnum implements $Instance {
  $TestEnum.wrap(this.$value);

  static const $type = BridgeTypeSpec(
    'package:my_eval/types.dart',
    'TestEnum',
  );

  static final $declaration = BridgeEnumDef(
    $type.ref,
    values: [
      'value1',
      'value2',
    ],
    methods: {},
    getters: {
      'values': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'List',
              ),
              [
                BridgeTypeRef(
                  $TestEnum.$type,
                  [],
                )
              ],
            ),
            nullable: false,
          ),
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: true,
      ),
      'index': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(
              BridgeTypeSpec(
                'dart:core',
                'int',
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
    setters: {},
  );

  @override
  final TestEnum $value;

  static final $values = {
    'value1': $TestEnum.wrap(TestEnum.value1),
    'value2': $TestEnum.wrap(TestEnum.value2),
  };

  late final $Instance _$superWrapper = $Object($value);

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeEnum($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'TestEnum.value1*g',
      $TestEnum.$g$value1,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'TestEnum.value2*g',
      $TestEnum.$g$value2,
    );
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'TestEnum.values*g',
      $TestEnum.$g$values,
    );
    runtime.registerBridgeEnumValues(
      'package:my_eval/types.dart',
      'TestEnum',
      $TestEnum.$values,
    );
  }

  @override
  get $reified => $value;

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
      case 'values':
        return $List.wrap(TestEnum.values);
      case 'index':
        return $int($value.index);
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

  static $Value? $g$value1(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $TestEnum.wrap(TestEnum.value1);
  }

  static $Value? $g$value2(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $TestEnum.wrap(TestEnum.value2);
  }

  static $Value? $g$values(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $List.wrap(TestEnum.values);
  }
}
