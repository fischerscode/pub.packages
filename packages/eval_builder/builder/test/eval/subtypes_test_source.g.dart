// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subtypes_test_source.dart';

// **************************************************************************
// WrapperGenerator
// **************************************************************************

class $SupClass1 implements $Instance {
  $SupClass1.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:myPackage/file.dart',
    'SupClass1',
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
          params: [],
          namedParams: [],
          generics: {},
        ),
        isFactory: false,
      )
    },
    methods: {
      'methodFromSup1': BridgeMethodDef(
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
          params: [
            'value'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
      'staticMethodFromSup1': BridgeMethodDef(
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
          params: [
            'value'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
      'propertyFromSup1': BridgeMethodDef(
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
      'staticPropertyFromSup1': BridgeMethodDef(
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
        isStatic: true,
      ),
    },
    setters: {
      'propertyFromSup1': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_propertyFromSup1'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
      'staticPropertyFromSup1': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_staticPropertyFromSup1'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
    bridge: false,
    wrap: true,
  );

  @override
  final SupClass1 $value;

  late final $Instance _$superWrapper = $Object($value);

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'SupClass1.staticMethodFromSup1',
      $SupClass1.$m$staticMethodFromSup1,
    );
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'SupClass1.staticPropertyFromSup1*g',
      $SupClass1.$g$staticPropertyFromSup1,
    );
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'SupClass1.staticPropertyFromSup1*s',
      $SupClass1.$s$staticPropertyFromSup1,
    );
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'SupClass1.',
      $SupClass1.$new,
    );
  }

  @override
  get $reified => $value;

  static $Value? $new(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $SupClass1.wrap(SupClass1());
  }

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
      case 'methodFromSup1':
        return $Function($SupClass1.$m$methodFromSup1);
      case 'staticMethodFromSup1':
        return $Function($SupClass1.$m$staticMethodFromSup1);
      case 'propertyFromSup1':
        return $int($value.propertyFromSup1);
      case 'staticPropertyFromSup1':
        return $int(SupClass1.staticPropertyFromSup1);
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
      case 'propertyFromSup1':
        $value.propertyFromSup1 = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! int ? ($.$reified as int) : $$;
        }(value);
      case 'staticPropertyFromSup1':
        SupClass1.staticPropertyFromSup1 = ($Value $) {
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

  static $Value? $m$methodFromSup1(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int((target!.$value as SupClass1).methodFromSup1(($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!)));
  }

  static $Value? $m$staticMethodFromSup1(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int(SupClass1.staticMethodFromSup1(($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!)));
  }

  static $Value? $g$staticPropertyFromSup1(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int(SupClass1.staticPropertyFromSup1);
  }

  static $Value? $s$staticPropertyFromSup1(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    SupClass1.staticPropertyFromSup1 = ($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!);
    return null;
  }
}

class $SupClass2 implements $Instance {
  $SupClass2.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:myPackage/file.dart',
    'SupClass2',
  );

  static final $declaration = BridgeClassDef(
    BridgeClassType(
      $type.ref,
      $extends: BridgeTypeRef(
        $SupClass1.$type,
        [],
      ),
      $implements: [],
      $with: [],
      isAbstract: true,
      generics: {},
    ),
    constructors: {},
    methods: {
      'methodFromSup2': BridgeMethodDef(
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
          params: [
            'value'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
      'abstractMethodFromSup2': BridgeMethodDef(
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
          params: [
            'value'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
      'staticMethodFromSup2': BridgeMethodDef(
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
          params: [
            'value'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
      'propertyFromSup2': BridgeMethodDef(
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
      'staticPropertyFromSup2': BridgeMethodDef(
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
        isStatic: true,
      ),
    },
    setters: {
      'propertyFromSup2': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_propertyFromSup2'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
      'staticPropertyFromSup2': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_staticPropertyFromSup2'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
    bridge: false,
    wrap: true,
  );

  @override
  final SupClass2 $value;

  late final $Instance _$superWrapper = $SupClass1.wrap($value);

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'SupClass2.staticMethodFromSup2',
      $SupClass2.$m$staticMethodFromSup2,
    );
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'SupClass2.staticPropertyFromSup2*g',
      $SupClass2.$g$staticPropertyFromSup2,
    );
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'SupClass2.staticPropertyFromSup2*s',
      $SupClass2.$s$staticPropertyFromSup2,
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
      case 'methodFromSup2':
        return $Function($SupClass2.$m$methodFromSup2);
      case 'abstractMethodFromSup2':
        return $Function($SupClass2.$m$abstractMethodFromSup2);
      case 'staticMethodFromSup2':
        return $Function($SupClass2.$m$staticMethodFromSup2);
      case 'propertyFromSup2':
        return $int($value.propertyFromSup2);
      case 'staticPropertyFromSup2':
        return $int(SupClass2.staticPropertyFromSup2);
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
      case 'propertyFromSup2':
        $value.propertyFromSup2 = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! int ? ($.$reified as int) : $$;
        }(value);
      case 'staticPropertyFromSup2':
        SupClass2.staticPropertyFromSup2 = ($Value $) {
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

  static $Value? $m$methodFromSup2(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int((target!.$value as SupClass2).methodFromSup2(($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!)));
  }

  static $Value? $m$abstractMethodFromSup2(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int(
        (target!.$value as SupClass2).abstractMethodFromSup2(($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!)));
  }

  static $Value? $m$staticMethodFromSup2(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int(SupClass2.staticMethodFromSup2(($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!)));
  }

  static $Value? $g$staticPropertyFromSup2(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int(SupClass2.staticPropertyFromSup2);
  }

  static $Value? $s$staticPropertyFromSup2(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    SupClass2.staticPropertyFromSup2 = ($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!);
    return null;
  }
}

class $Interface1 implements $Instance {
  $Interface1.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:myPackage/file.dart',
    'Interface1',
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
      'methodFromInterface1': BridgeMethodDef(
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
      )
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  @override
  final Interface1 $value;

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
      case 'methodFromInterface1':
        return $Function($Interface1.$m$methodFromInterface1);
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

  static $Value? $m$methodFromInterface1(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int((target!.$value as Interface1).methodFromInterface1());
  }
}

class $Interface3 implements $Instance {
  $Interface3.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:myPackage/file.dart',
    'Interface3',
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
      'methodFromInterface3': BridgeMethodDef(
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
      )
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  @override
  final Interface3 $value;

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
      case 'methodFromInterface3':
        return $Function($Interface3.$m$methodFromInterface3);
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

  static $Value? $m$methodFromInterface3(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int((target!.$value as Interface3).methodFromInterface3());
  }
}

class $TestClass implements $Instance {
  $TestClass.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:myPackage/file.dart',
    'TestClass',
  );

  static final $declaration = BridgeClassDef(
    BridgeClassType(
      $type.ref,
      $extends: BridgeTypeRef(
        $SupClass2.$type,
        [],
      ),
      $implements: [
        BridgeTypeRef(
          $Interface3.$type,
          [],
        ),
        BridgeTypeRef(
          $Interface1.$type,
          [],
        ),
      ],
      $with: [],
      isAbstract: false,
      generics: {},
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: $type.ref.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isFactory: false,
      )
    },
    methods: {
      'method': BridgeMethodDef(
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
          params: [
            'value'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
      'staticMethod': BridgeMethodDef(
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
          params: [
            'value'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
      'abstractMethodFromSup2': BridgeMethodDef(
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
          params: [
            'value'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
      'abstractMethodFromSup3': BridgeMethodDef(
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
          params: [
            'value'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
      'methodFromInterface2': BridgeMethodDef(
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
      'methodFromInterface3': BridgeMethodDef(
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
      'methodFromSup3': BridgeMethodDef(
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
          params: [
            'value'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
      'methodFromInterface1': BridgeMethodDef(
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
    getters: {
      'property': BridgeMethodDef(
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
      'staticProperty': BridgeMethodDef(
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
        isStatic: true,
      ),
      'propertyFromSup3': BridgeMethodDef(
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
    setters: {
      'property': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_property'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
      'staticProperty': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_staticProperty'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
      'propertyFromSup3': BridgeMethodDef(
        BridgeFunctionDef(
          returns: CoreTypes.voidType.ref.annotate,
          params: [
            '_propertyFromSup3'.param(BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'dart:core',
                  'int',
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
  final TestClass $value;

  late final $Instance _$superWrapper = $SupClass2.wrap($value);

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'TestClass.staticMethod',
      $TestClass.$m$staticMethod,
    );
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'TestClass.staticProperty*g',
      $TestClass.$g$staticProperty,
    );
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'TestClass.staticProperty*s',
      $TestClass.$s$staticProperty,
    );
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
    return $TestClass.wrap(TestClass());
  }

  @override
  $Value? $getProperty(
    Runtime runtime,
    String identifier,
  ) {
    switch (identifier) {
      case 'method':
        return $Function($TestClass.$m$method);
      case 'staticMethod':
        return $Function($TestClass.$m$staticMethod);
      case 'abstractMethodFromSup2':
        return $Function($TestClass.$m$abstractMethodFromSup2);
      case 'abstractMethodFromSup3':
        return $Function($TestClass.$m$abstractMethodFromSup3);
      case 'methodFromInterface2':
        return $Function($TestClass.$m$methodFromInterface2);
      case 'methodFromInterface3':
        return $Function($TestClass.$m$methodFromInterface3);
      case 'methodFromSup3':
        return $Function($TestClass.$m$methodFromSup3);
      case 'methodFromInterface1':
        return $Function($TestClass.$m$methodFromInterface1);
      case 'property':
        return $int($value.property);
      case 'staticProperty':
        return $int(TestClass.staticProperty);
      case 'propertyFromSup3':
        return $int($value.propertyFromSup3);
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
      case 'property':
        $value.property = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! int ? ($.$reified as int) : $$;
        }(value);
      case 'staticProperty':
        TestClass.staticProperty = ($Value $) {
          final $$ = ($ as dynamic);
          return $$ is! int ? ($.$reified as int) : $$;
        }(value);
      case 'propertyFromSup3':
        $value.propertyFromSup3 = ($Value $) {
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

  static $Value? $m$method(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int((target!.$value as TestClass).method(($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!)));
  }

  static $Value? $m$staticMethod(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int(TestClass.staticMethod(($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!)));
  }

  static $Value? $m$abstractMethodFromSup2(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int(
        (target!.$value as TestClass).abstractMethodFromSup2(($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!)));
  }

  static $Value? $m$abstractMethodFromSup3(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int(
        (target!.$value as TestClass).abstractMethodFromSup3(($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!)));
  }

  static $Value? $m$methodFromInterface2(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int((target!.$value as TestClass).methodFromInterface2());
  }

  static $Value? $m$methodFromInterface3(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int((target!.$value as TestClass).methodFromInterface3());
  }

  static $Value? $m$methodFromSup3(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int((target!.$value as TestClass).methodFromSup3(($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!)));
  }

  static $Value? $m$methodFromInterface1(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int((target!.$value as TestClass).methodFromInterface1());
  }

  static $Value? $g$staticProperty(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $int(TestClass.staticProperty);
  }

  static $Value? $s$staticProperty(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    TestClass.staticProperty = ($Value $) {
      final $$ = ($ as dynamic);
      return $$ is! int ? ($.$reified as int) : $$;
    }(args[0]!);
    return null;
  }
}

class $RandomClass implements $Instance {
  $RandomClass.wrap(this.$value);

  static final $type = BridgeTypeSpec(
    'package:myPackage/file.dart',
    'RandomClass',
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
  final RandomClass $value;

  late final $Instance _$superWrapper = $Object($value);

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:myPackage/file.dart',
      'RandomClass.',
      $RandomClass.$new,
    );
  }

  @override
  get $reified => $value;

  static $Value? $new(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    return $RandomClass.wrap(RandomClass());
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
