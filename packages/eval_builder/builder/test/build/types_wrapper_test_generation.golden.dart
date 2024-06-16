part of 'types_wrapper_test_generation.dart';

class $TypesContainer implements dart_eval_bridge.$Instance {
  $TypesContainer.wrap(this.$value);

  static final $type = dart_eval_bridge.BridgeTypeSpec(
    'package:my_eval/types.dart',
    'TypesContainer',
  );

  static final $declaration = dart_eval_bridge.BridgeClassDef(
    dart_eval_bridge.BridgeClassType(
      $type.ref,
      $extends: dart_eval_bridge.BridgeTypeRef(dart_eval_bridge.BridgeTypeSpec(
        'dart:core',
        'Object',
      )),
      $implements: [],
      $with: [],
      isAbstract: false,
    ),
    constructors: {
      '': dart_eval_bridge.BridgeConstructorDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: $type.ref.annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isFactory: false,
      )
    },
    methods: {
      'voidMethod': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      )
    },
    getters: {
      'varCompleter': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:async',
              'Completer',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varCompleterNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:async',
              'Completer',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStream': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:async',
              'Stream',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:async',
              'Stream',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamController': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:async',
              'StreamController',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamControllerNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:async',
              'StreamController',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamSink': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:async',
              'StreamSink',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamSinkNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:async',
              'StreamSink',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamSubscription': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:async',
              'StreamSubscription',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamSubscriptionNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:async',
              'StreamSubscription',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamTransformer': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:async',
              'StreamTransformer',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamTransformerNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:async',
              'StreamTransformer',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamView': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:async',
              'StreamView',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamViewNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:async',
              'StreamView',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varLinkedHashMap': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:collection',
              'LinkedHashMap',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varLinkedHashMapNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:collection',
              'LinkedHashMap',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varCodec': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:convert',
              'Codec',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varCodecNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:convert',
              'Codec',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varConverter': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:convert',
              'Converter',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varConverterNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:convert',
              'Converter',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varEncoding': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:convert',
              'Encoding',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varEncodingNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:convert',
              'Encoding',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varJsonCodec': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:convert',
              'JsonCodec',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varJsonCodecNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:convert',
              'JsonCodec',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varJsonDecoder': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:convert',
              'JsonDecoder',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varJsonDecoderNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:convert',
              'JsonDecoder',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varJsonEncoder': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:convert',
              'JsonEncoder',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varJsonEncoderNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:convert',
              'JsonEncoder',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUtf8Codec': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:convert',
              'Utf8Codec',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUtf8CodecNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:convert',
              'Utf8Codec',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUtf8Decoder': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:convert',
              'Utf8Decoder',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUtf8DecoderNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:convert',
              'Utf8Decoder',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varArgumentError': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'ArgumentError',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varArgumentErrorNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'ArgumentError',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varAssertionError': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'AssertionError',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varAssertionErrorNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'AssertionError',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varbool': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'bool',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varboolNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'bool',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varComparable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Comparable',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varComparableNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Comparable',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varDateTime': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'DateTime',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varDateTimeNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'DateTime',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'vardouble': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'double',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'vardoubleNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'double',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varDuration': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Duration',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varDurationNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Duration',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varError': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Error',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varErrorNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Error',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varException': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Exception',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varExceptionNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Exception',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFormatException': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'FormatException',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFormatExceptionNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'FormatException',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFuture': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Future',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFutureNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Future',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varint': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
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
      'varintNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'int',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varIterable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Iterable',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varIterableNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Iterable',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varList': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'List',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varListNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'List',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varMap': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Map',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varMapNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Map',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varMapEntry': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'MapEntry',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varMapEntryNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'MapEntry',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varMatch': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Match',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varMatchNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Match',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varnum': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'num',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varnumNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'num',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varObject': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Object',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varObjectNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Object',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varPattern': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Pattern',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varPatternNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Pattern',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varRangeError': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'RangeError',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varRangeErrorNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'RangeError',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varRegExp': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'RegExp',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varRegExpNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'RegExp',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varRegExpMatch': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'RegExpMatch',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varRegExpMatchNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'RegExpMatch',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStackTrace': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'StackTrace',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStackTraceNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'StackTrace',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStateError': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'StateError',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStateErrorNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'StateError',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varString': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
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
      'varStringNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'String',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStringBuffer': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'StringBuffer',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStringBufferNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'StringBuffer',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUnimplementedError': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'UnimplementedError',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUnimplementedErrorNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'UnimplementedError',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUnsupportedError': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'UnsupportedError',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUnsupportedErrorNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'UnsupportedError',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUri': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Uri',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUriNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:core',
              'Uri',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varDirectory': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'Directory',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varDirectoryNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'Directory',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFile': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'File',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFileNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'File',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFileSystemEntity': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'FileSystemEntity',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFileSystemEntityNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'FileSystemEntity',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varHttpClient': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'HttpClient',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varHttpClientNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'HttpClient',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varHttpClientRequest': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'HttpClientRequest',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varHttpClientRequestNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'HttpClientRequest',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varHttpClientResponse': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'HttpClientResponse',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varHttpClientResponseNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'HttpClientResponse',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varInternetAddress': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'InternetAddress',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varInternetAddressNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'InternetAddress',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varInternetAddressType': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'InternetAddressType',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varInternetAddressTypeNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'InternetAddressType',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varIOSink': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'IOSink',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varIOSinkNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'IOSink',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStringSink': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'StringSink',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStringSinkNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:io',
              'StringSink',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varPoint': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:math',
              'Point',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varPointNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:math',
              'Point',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varByteBuffer': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:typed_data',
              'ByteBuffer',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varByteBufferNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:typed_data',
              'ByteBuffer',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varByteData': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:typed_data',
              'ByteData',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varByteDataNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:typed_data',
              'ByteData',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varTypedData': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:typed_data',
              'TypedData',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varTypedDataNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:typed_data',
              'TypedData',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUint8List': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:typed_data',
              'Uint8List',
            ),
            [],
          ).annotateNullable,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUint8ListNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeRef(
            dart_eval_bridge.BridgeTypeSpec(
              'dart:typed_data',
              'Uint8List',
            ),
            [],
          ).annotate,
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFunction': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeAnnotation(
            dart_eval_bridge.BridgeTypeRef.genericFunction(
                dart_eval_bridge.BridgeFunctionDef(
              returns: dart_eval_bridge.BridgeTypeRef(
                dart_eval_bridge.BridgeTypeSpec(
                  'dart:core',
                  'String',
                ),
                [],
              ).annotateNullable,
              params: [
                dart_eval_bridge.BridgeParameter(
                  'a',
                  dart_eval_bridge.BridgeTypeRef(
                    dart_eval_bridge.BridgeTypeSpec(
                      'dart:core',
                      'String',
                    ),
                    [],
                  ).annotateNullable,
                  false,
                )
              ],
              namedParams: [
                dart_eval_bridge.BridgeParameter(
                  'b',
                  dart_eval_bridge.BridgeTypeRef(
                    dart_eval_bridge.BridgeTypeSpec(
                      'dart:core',
                      'String',
                    ),
                    [],
                  ).annotateNullable,
                  false,
                ),
                dart_eval_bridge.BridgeParameter(
                  'c',
                  dart_eval_bridge.BridgeTypeRef(
                    dart_eval_bridge.BridgeTypeSpec(
                      'dart:core',
                      'String',
                    ),
                    [],
                  ).annotate,
                  true,
                ),
              ],
            )),
            nullable: false,
          ),
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFunctionNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.BridgeTypeAnnotation(
            dart_eval_bridge.BridgeTypeRef.genericFunction(
                dart_eval_bridge.BridgeFunctionDef(
              returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
              params: [
                dart_eval_bridge.BridgeParameter(
                  'a',
                  dart_eval_bridge.BridgeTypeRef(
                    dart_eval_bridge.BridgeTypeSpec(
                      'dart:core',
                      'String',
                    ),
                    [],
                  ).annotateNullable,
                  false,
                ),
                dart_eval_bridge.BridgeParameter(
                  'b',
                  dart_eval_bridge.BridgeTypeRef(
                    dart_eval_bridge.BridgeTypeSpec(
                      'dart:core',
                      'String',
                    ),
                    [],
                  ).annotateNullable,
                  true,
                ),
                dart_eval_bridge.BridgeParameter(
                  'c',
                  dart_eval_bridge.BridgeTypeRef(
                    dart_eval_bridge.BridgeTypeSpec(
                      'dart:core',
                      'String',
                    ),
                    [],
                  ).annotate,
                  true,
                ),
              ],
              namedParams: [],
            )),
            nullable: true,
          ),
          params: [],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
    },
    setters: {
      'varCompleter': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varCompleter'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:async',
                'Completer',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varCompleterNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varCompleterNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:async',
                'Completer',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStream': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStream'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:async',
                'Stream',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStreamNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:async',
                'Stream',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamController': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStreamController'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:async',
                'StreamController',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamControllerNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStreamControllerNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:async',
                'StreamController',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamSink': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStreamSink'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:async',
                'StreamSink',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamSinkNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStreamSinkNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:async',
                'StreamSink',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamSubscription': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStreamSubscription'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:async',
                'StreamSubscription',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamSubscriptionNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStreamSubscriptionNullable'
                .param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:async',
                'StreamSubscription',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamTransformer': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStreamTransformer'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:async',
                'StreamTransformer',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamTransformerNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStreamTransformerNullable'
                .param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:async',
                'StreamTransformer',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamView': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStreamView'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:async',
                'StreamView',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStreamViewNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStreamViewNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:async',
                'StreamView',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varLinkedHashMap': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varLinkedHashMap'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:collection',
                'LinkedHashMap',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varLinkedHashMapNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varLinkedHashMapNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:collection',
                'LinkedHashMap',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varCodec': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varCodec'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:convert',
                'Codec',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varCodecNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varCodecNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:convert',
                'Codec',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varConverter': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varConverter'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:convert',
                'Converter',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varConverterNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varConverterNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:convert',
                'Converter',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varEncoding': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varEncoding'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:convert',
                'Encoding',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varEncodingNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varEncodingNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:convert',
                'Encoding',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varJsonCodec': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varJsonCodec'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:convert',
                'JsonCodec',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varJsonCodecNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varJsonCodecNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:convert',
                'JsonCodec',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varJsonDecoder': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varJsonDecoder'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:convert',
                'JsonDecoder',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varJsonDecoderNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varJsonDecoderNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:convert',
                'JsonDecoder',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varJsonEncoder': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varJsonEncoder'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:convert',
                'JsonEncoder',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varJsonEncoderNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varJsonEncoderNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:convert',
                'JsonEncoder',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUtf8Codec': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varUtf8Codec'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:convert',
                'Utf8Codec',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUtf8CodecNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varUtf8CodecNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:convert',
                'Utf8Codec',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUtf8Decoder': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varUtf8Decoder'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:convert',
                'Utf8Decoder',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUtf8DecoderNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varUtf8DecoderNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:convert',
                'Utf8Decoder',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varArgumentError': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varArgumentError'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'ArgumentError',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varArgumentErrorNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varArgumentErrorNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'ArgumentError',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varAssertionError': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varAssertionError'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'AssertionError',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varAssertionErrorNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varAssertionErrorNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'AssertionError',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varbool': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varbool'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'bool',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varboolNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varboolNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'bool',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varComparable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varComparable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Comparable',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varComparableNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varComparableNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Comparable',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varDateTime': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varDateTime'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'DateTime',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varDateTimeNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varDateTimeNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'DateTime',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'vardouble': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_vardouble'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'double',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'vardoubleNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_vardoubleNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'double',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varDuration': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varDuration'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Duration',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varDurationNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varDurationNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Duration',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varError': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varError'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Error',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varErrorNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varErrorNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Error',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varException': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varException'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Exception',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varExceptionNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varExceptionNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Exception',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFormatException': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varFormatException'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'FormatException',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFormatExceptionNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varFormatExceptionNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'FormatException',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFuture': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varFuture'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Future',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFutureNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varFutureNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Future',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varint': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varint'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
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
      'varintNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varintNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'int',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varIterable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varIterable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Iterable',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varIterableNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varIterableNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Iterable',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varList': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varList'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'List',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varListNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varListNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'List',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varMap': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varMap'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Map',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varMapNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varMapNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Map',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varMapEntry': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varMapEntry'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'MapEntry',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varMapEntryNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varMapEntryNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'MapEntry',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varMatch': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varMatch'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Match',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varMatchNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varMatchNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Match',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varnum': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varnum'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'num',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varnumNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varnumNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'num',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varObject': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varObject'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Object',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varObjectNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varObjectNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Object',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varPattern': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varPattern'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Pattern',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varPatternNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varPatternNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Pattern',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varRangeError': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varRangeError'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'RangeError',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varRangeErrorNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varRangeErrorNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'RangeError',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varRegExp': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varRegExp'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'RegExp',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varRegExpNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varRegExpNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'RegExp',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varRegExpMatch': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varRegExpMatch'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'RegExpMatch',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varRegExpMatchNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varRegExpMatchNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'RegExpMatch',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStackTrace': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStackTrace'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'StackTrace',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStackTraceNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStackTraceNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'StackTrace',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStateError': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStateError'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'StateError',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStateErrorNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStateErrorNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'StateError',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varString': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varString'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
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
      'varStringNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStringNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'String',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStringBuffer': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStringBuffer'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'StringBuffer',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStringBufferNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStringBufferNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'StringBuffer',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUnimplementedError': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varUnimplementedError'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'UnimplementedError',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUnimplementedErrorNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varUnimplementedErrorNullable'
                .param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'UnimplementedError',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUnsupportedError': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varUnsupportedError'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'UnsupportedError',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUnsupportedErrorNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varUnsupportedErrorNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'UnsupportedError',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUri': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varUri'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Uri',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUriNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varUriNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:core',
                'Uri',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varDirectory': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varDirectory'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'Directory',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varDirectoryNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varDirectoryNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'Directory',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFile': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varFile'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'File',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFileNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varFileNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'File',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFileSystemEntity': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varFileSystemEntity'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'FileSystemEntity',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFileSystemEntityNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varFileSystemEntityNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'FileSystemEntity',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varHttpClient': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varHttpClient'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'HttpClient',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varHttpClientNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varHttpClientNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'HttpClient',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varHttpClientRequest': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varHttpClientRequest'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'HttpClientRequest',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varHttpClientRequestNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varHttpClientRequestNullable'
                .param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'HttpClientRequest',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varHttpClientResponse': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varHttpClientResponse'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'HttpClientResponse',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varHttpClientResponseNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varHttpClientResponseNullable'
                .param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'HttpClientResponse',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varInternetAddress': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varInternetAddress'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'InternetAddress',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varInternetAddressNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varInternetAddressNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'InternetAddress',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varInternetAddressType': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varInternetAddressType'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'InternetAddressType',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varInternetAddressTypeNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varInternetAddressTypeNullable'
                .param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'InternetAddressType',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varIOSink': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varIOSink'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'IOSink',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varIOSinkNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varIOSinkNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'IOSink',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStringSink': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStringSink'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'StringSink',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varStringSinkNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varStringSinkNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:io',
                'StringSink',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varPoint': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varPoint'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:math',
                'Point',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varPointNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varPointNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:math',
                'Point',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varByteBuffer': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varByteBuffer'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:typed_data',
                'ByteBuffer',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varByteBufferNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varByteBufferNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:typed_data',
                'ByteBuffer',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varByteData': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varByteData'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:typed_data',
                'ByteData',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varByteDataNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varByteDataNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:typed_data',
                'ByteData',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varTypedData': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varTypedData'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:typed_data',
                'TypedData',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varTypedDataNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varTypedDataNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:typed_data',
                'TypedData',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUint8List': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varUint8List'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:typed_data',
                'Uint8List',
              ),
              [],
            ).annotateNullable)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varUint8ListNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varUint8ListNullable'.param(dart_eval_bridge.BridgeTypeRef(
              dart_eval_bridge.BridgeTypeSpec(
                'dart:typed_data',
                'Uint8List',
              ),
              [],
            ).annotate)
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFunction': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varFunction'.param(dart_eval_bridge.BridgeTypeAnnotation(
              dart_eval_bridge.BridgeTypeRef.genericFunction(
                  dart_eval_bridge.BridgeFunctionDef(
                returns: dart_eval_bridge.BridgeTypeRef(
                  dart_eval_bridge.BridgeTypeSpec(
                    'dart:core',
                    'String',
                  ),
                  [],
                ).annotateNullable,
                params: [
                  dart_eval_bridge.BridgeParameter(
                    'a',
                    dart_eval_bridge.BridgeTypeRef(
                      dart_eval_bridge.BridgeTypeSpec(
                        'dart:core',
                        'String',
                      ),
                      [],
                    ).annotateNullable,
                    false,
                  )
                ],
                namedParams: [
                  dart_eval_bridge.BridgeParameter(
                    'b',
                    dart_eval_bridge.BridgeTypeRef(
                      dart_eval_bridge.BridgeTypeSpec(
                        'dart:core',
                        'String',
                      ),
                      [],
                    ).annotateNullable,
                    false,
                  ),
                  dart_eval_bridge.BridgeParameter(
                    'c',
                    dart_eval_bridge.BridgeTypeRef(
                      dart_eval_bridge.BridgeTypeSpec(
                        'dart:core',
                        'String',
                      ),
                      [],
                    ).annotate,
                    true,
                  ),
                ],
              )),
              nullable: false,
            ))
          ],
          namedParams: [],
          generics: {},
        ),
        isStatic: false,
      ),
      'varFunctionNullable': dart_eval_bridge.BridgeMethodDef(
        dart_eval_bridge.BridgeFunctionDef(
          returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
          params: [
            '_varFunctionNullable'.param(dart_eval_bridge.BridgeTypeAnnotation(
              dart_eval_bridge.BridgeTypeRef.genericFunction(
                  dart_eval_bridge.BridgeFunctionDef(
                returns: dart_eval_bridge.CoreTypes.voidType.ref.annotate,
                params: [
                  dart_eval_bridge.BridgeParameter(
                    'a',
                    dart_eval_bridge.BridgeTypeRef(
                      dart_eval_bridge.BridgeTypeSpec(
                        'dart:core',
                        'String',
                      ),
                      [],
                    ).annotateNullable,
                    false,
                  ),
                  dart_eval_bridge.BridgeParameter(
                    'b',
                    dart_eval_bridge.BridgeTypeRef(
                      dart_eval_bridge.BridgeTypeSpec(
                        'dart:core',
                        'String',
                      ),
                      [],
                    ).annotateNullable,
                    true,
                  ),
                  dart_eval_bridge.BridgeParameter(
                    'c',
                    dart_eval_bridge.BridgeTypeRef(
                      dart_eval_bridge.BridgeTypeSpec(
                        'dart:core',
                        'String',
                      ),
                      [],
                    ).annotate,
                    true,
                  ),
                ],
                namedParams: [],
              )),
              nullable: true,
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

  @core.override
  final TypesContainer $value;

  late final dart_eval_bridge.$Instance _$superWrapper =
      stdlib_core.$Object($value);

  static void configureForCompile(
      dart_eval_bridge.BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(dart_eval_bridge.Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:my_eval/types.dart',
      'TypesContainer.',
      $TypesContainer.$new,
    );
  }

  @core.override
  get $reified => $value;

  static dart_eval_bridge.$Value? $new(
    dart_eval_bridge.Runtime runtime,
    dart_eval_bridge.$Value? target,
    core.List<dart_eval_bridge.$Value?> args,
  ) {
    return $TypesContainer.wrap(TypesContainer());
  }

  @core.override
  dart_eval_bridge.$Value? $getProperty(
    dart_eval_bridge.Runtime runtime,
    core.String identifier,
  ) {
    switch (identifier) {
      case 'voidMethod':
        return dart_eval_bridge.$Function($TypesContainer._voidMethod);
      case 'varCompleter':
        return stdlib_async.$Completer.wrap($value.varCompleter);
      case 'varCompleterNullable':
        return () {
          final $ = $value.varCompleterNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_async.$Completer.wrap($);
        }();
      case 'varStream':
        return stdlib_async.$Stream.wrap($value.varStream);
      case 'varStreamNullable':
        return () {
          final $ = $value.varStreamNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_async.$Stream.wrap($);
        }();
      case 'varStreamController':
        return stdlib_async.$StreamController.wrap($value.varStreamController);
      case 'varStreamControllerNullable':
        return () {
          final $ = $value.varStreamControllerNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_async.$StreamController.wrap($);
        }();
      case 'varStreamSink':
        return stdlib_async.$StreamSink.wrap($value.varStreamSink);
      case 'varStreamSinkNullable':
        return () {
          final $ = $value.varStreamSinkNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_async.$StreamSink.wrap($);
        }();
      case 'varStreamSubscription':
        return stdlib_async.$StreamSubscription
            .wrap($value.varStreamSubscription);
      case 'varStreamSubscriptionNullable':
        return () {
          final $ = $value.varStreamSubscriptionNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_async.$StreamSubscription.wrap($);
        }();
      case 'varStreamTransformer':
        return stdlib_async.$StreamTransformer
            .wrap($value.varStreamTransformer);
      case 'varStreamTransformerNullable':
        return () {
          final $ = $value.varStreamTransformerNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_async.$StreamTransformer.wrap($);
        }();
      case 'varStreamView':
        return stdlib_async.$StreamView.wrap($value.varStreamView);
      case 'varStreamViewNullable':
        return () {
          final $ = $value.varStreamViewNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_async.$StreamView.wrap($);
        }();
      case 'varLinkedHashMap':
        return stdlib_collection.$LinkedHashMap.wrap($value.varLinkedHashMap);
      case 'varLinkedHashMapNullable':
        return () {
          final $ = $value.varLinkedHashMapNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_collection.$LinkedHashMap.wrap($);
        }();
      case 'varCodec':
        return stdlib_convert.$Codec.wrap($value.varCodec);
      case 'varCodecNullable':
        return () {
          final $ = $value.varCodecNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_convert.$Codec.wrap($);
        }();
      case 'varConverter':
        return stdlib_convert.$Converter.wrap($value.varConverter);
      case 'varConverterNullable':
        return () {
          final $ = $value.varConverterNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_convert.$Converter.wrap($);
        }();
      case 'varEncoding':
        return stdlib_convert.$Encoding.wrap($value.varEncoding);
      case 'varEncodingNullable':
        return () {
          final $ = $value.varEncodingNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_convert.$Encoding.wrap($);
        }();
      case 'varJsonCodec':
        return stdlib_convert.$JsonCodec.wrap($value.varJsonCodec);
      case 'varJsonCodecNullable':
        return () {
          final $ = $value.varJsonCodecNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_convert.$JsonCodec.wrap($);
        }();
      case 'varJsonDecoder':
        return stdlib_convert.$JsonDecoder.wrap($value.varJsonDecoder);
      case 'varJsonDecoderNullable':
        return () {
          final $ = $value.varJsonDecoderNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_convert.$JsonDecoder.wrap($);
        }();
      case 'varJsonEncoder':
        return stdlib_convert.$JsonEncoder.wrap($value.varJsonEncoder);
      case 'varJsonEncoderNullable':
        return () {
          final $ = $value.varJsonEncoderNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_convert.$JsonEncoder.wrap($);
        }();
      case 'varUtf8Codec':
        return stdlib_convert.$Utf8Codec.wrap($value.varUtf8Codec);
      case 'varUtf8CodecNullable':
        return () {
          final $ = $value.varUtf8CodecNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_convert.$Utf8Codec.wrap($);
        }();
      case 'varUtf8Decoder':
        return stdlib_convert.$Utf8Decoder.wrap($value.varUtf8Decoder);
      case 'varUtf8DecoderNullable':
        return () {
          final $ = $value.varUtf8DecoderNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_convert.$Utf8Decoder.wrap($);
        }();
      case 'varArgumentError':
        return stdlib_core.$ArgumentError.wrap($value.varArgumentError);
      case 'varArgumentErrorNullable':
        return () {
          final $ = $value.varArgumentErrorNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$ArgumentError.wrap($);
        }();
      case 'varAssertionError':
        return stdlib_core.$AssertionError.wrap($value.varAssertionError);
      case 'varAssertionErrorNullable':
        return () {
          final $ = $value.varAssertionErrorNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$AssertionError.wrap($);
        }();
      case 'varbool':
        return stdlib_core.$bool($value.varbool);
      case 'varboolNullable':
        return () {
          final $ = $value.varboolNullable;
          return $ == null ? const stdlib_core.$null() : stdlib_core.$bool($);
        }();
      case 'varComparable':
        return stdlib_core.$Comparable<core.dynamic>.wrap($value.varComparable);
      case 'varComparableNullable':
        return () {
          final $ = $value.varComparableNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$Comparable<core.dynamic>.wrap($);
        }();
      case 'varDateTime':
        return stdlib_core.$DateTime.wrap($value.varDateTime);
      case 'varDateTimeNullable':
        return () {
          final $ = $value.varDateTimeNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$DateTime.wrap($);
        }();
      case 'vardouble':
        return stdlib_core.$double($value.vardouble);
      case 'vardoubleNullable':
        return () {
          final $ = $value.vardoubleNullable;
          return $ == null ? const stdlib_core.$null() : stdlib_core.$double($);
        }();
      case 'varDuration':
        return stdlib_core.$Duration.wrap($value.varDuration);
      case 'varDurationNullable':
        return () {
          final $ = $value.varDurationNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$Duration.wrap($);
        }();
      case 'varError':
        return stdlib_core.$Error.wrap($value.varError);
      case 'varErrorNullable':
        return () {
          final $ = $value.varErrorNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$Error.wrap($);
        }();
      case 'varException':
        return stdlib_core.$Exception.wrap($value.varException);
      case 'varExceptionNullable':
        return () {
          final $ = $value.varExceptionNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$Exception.wrap($);
        }();
      case 'varFormatException':
        return stdlib_core.$FormatException.wrap($value.varFormatException);
      case 'varFormatExceptionNullable':
        return () {
          final $ = $value.varFormatExceptionNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$FormatException.wrap($);
        }();
      case 'varFuture':
        return stdlib_core.$Future<core.dynamic>.wrap($value.varFuture);
      case 'varFutureNullable':
        return () {
          final $ = $value.varFutureNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$Future<core.dynamic>.wrap($);
        }();
      case 'varint':
        return stdlib_core.$int($value.varint);
      case 'varintNullable':
        return () {
          final $ = $value.varintNullable;
          return $ == null ? const stdlib_core.$null() : stdlib_core.$int($);
        }();
      case 'varIterable':
        return stdlib_core.$Iterable.wrap($value.varIterable);
      case 'varIterableNullable':
        return () {
          final $ = $value.varIterableNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$Iterable.wrap($);
        }();
      case 'varList':
        return stdlib_core.$List.wrap($value.varList);
      case 'varListNullable':
        return () {
          final $ = $value.varListNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$List.wrap($);
        }();
      case 'varMap':
        return stdlib_core.$Map.wrap($value.varMap);
      case 'varMapNullable':
        return () {
          final $ = $value.varMapNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$Map.wrap($);
        }();
      case 'varMapEntry':
        return stdlib_core.$MapEntry.wrap($value.varMapEntry);
      case 'varMapEntryNullable':
        return () {
          final $ = $value.varMapEntryNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$MapEntry.wrap($);
        }();
      case 'varMatch':
        return stdlib_core.$Match.wrap($value.varMatch);
      case 'varMatchNullable':
        return () {
          final $ = $value.varMatchNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$Match.wrap($);
        }();
      case 'varnum':
        return stdlib_core.$num($value.varnum);
      case 'varnumNullable':
        return () {
          final $ = $value.varnumNullable;
          return $ == null ? const stdlib_core.$null() : stdlib_core.$num($);
        }();
      case 'varObject':
        return stdlib_core.$Object($value.varObject);
      case 'varObjectNullable':
        return () {
          final $ = $value.varObjectNullable;
          return $ == null ? const stdlib_core.$null() : stdlib_core.$Object($);
        }();
      case 'varPattern':
        return stdlib_core.$Pattern.wrap($value.varPattern);
      case 'varPatternNullable':
        return () {
          final $ = $value.varPatternNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$Pattern.wrap($);
        }();
      case 'varRangeError':
        return stdlib_core.$RangeError.wrap($value.varRangeError);
      case 'varRangeErrorNullable':
        return () {
          final $ = $value.varRangeErrorNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$RangeError.wrap($);
        }();
      case 'varRegExp':
        return stdlib_core.$RegExp.wrap($value.varRegExp);
      case 'varRegExpNullable':
        return () {
          final $ = $value.varRegExpNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$RegExp.wrap($);
        }();
      case 'varRegExpMatch':
        return stdlib_core.$RegExpMatch.wrap($value.varRegExpMatch);
      case 'varRegExpMatchNullable':
        return () {
          final $ = $value.varRegExpMatchNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$RegExpMatch.wrap($);
        }();
      case 'varStackTrace':
        return stdlib_core.$StackTrace.wrap($value.varStackTrace);
      case 'varStackTraceNullable':
        return () {
          final $ = $value.varStackTraceNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$StackTrace.wrap($);
        }();
      case 'varStateError':
        return stdlib_core.$StateError.wrap($value.varStateError);
      case 'varStateErrorNullable':
        return () {
          final $ = $value.varStateErrorNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$StateError.wrap($);
        }();
      case 'varString':
        return stdlib_core.$String($value.varString);
      case 'varStringNullable':
        return () {
          final $ = $value.varStringNullable;
          return $ == null ? const stdlib_core.$null() : stdlib_core.$String($);
        }();
      case 'varStringBuffer':
        return stdlib_core.$StringBuffer.wrap($value.varStringBuffer);
      case 'varStringBufferNullable':
        return () {
          final $ = $value.varStringBufferNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$StringBuffer.wrap($);
        }();
      case 'varUnimplementedError':
        return stdlib_core.$UnimplementedError
            .wrap($value.varUnimplementedError);
      case 'varUnimplementedErrorNullable':
        return () {
          final $ = $value.varUnimplementedErrorNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$UnimplementedError.wrap($);
        }();
      case 'varUnsupportedError':
        return stdlib_core.$UnsupportedError.wrap($value.varUnsupportedError);
      case 'varUnsupportedErrorNullable':
        return () {
          final $ = $value.varUnsupportedErrorNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$UnsupportedError.wrap($);
        }();
      case 'varUri':
        return stdlib_core.$Uri.wrap($value.varUri);
      case 'varUriNullable':
        return () {
          final $ = $value.varUriNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_core.$Uri.wrap($);
        }();
      case 'varDirectory':
        return stdlib_io.$Directory.wrap($value.varDirectory);
      case 'varDirectoryNullable':
        return () {
          final $ = $value.varDirectoryNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_io.$Directory.wrap($);
        }();
      case 'varFile':
        return stdlib_io.$File.wrap($value.varFile);
      case 'varFileNullable':
        return () {
          final $ = $value.varFileNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_io.$File.wrap($);
        }();
      case 'varFileSystemEntity':
        return stdlib_io.$FileSystemEntity.wrap($value.varFileSystemEntity);
      case 'varFileSystemEntityNullable':
        return () {
          final $ = $value.varFileSystemEntityNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_io.$FileSystemEntity.wrap($);
        }();
      case 'varHttpClient':
        return stdlib_io.$HttpClient.wrap($value.varHttpClient);
      case 'varHttpClientNullable':
        return () {
          final $ = $value.varHttpClientNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_io.$HttpClient.wrap($);
        }();
      case 'varHttpClientRequest':
        return stdlib_io.$HttpClientRequest.wrap($value.varHttpClientRequest);
      case 'varHttpClientRequestNullable':
        return () {
          final $ = $value.varHttpClientRequestNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_io.$HttpClientRequest.wrap($);
        }();
      case 'varHttpClientResponse':
        return stdlib_io.$HttpClientResponse.wrap($value.varHttpClientResponse);
      case 'varHttpClientResponseNullable':
        return () {
          final $ = $value.varHttpClientResponseNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_io.$HttpClientResponse.wrap($);
        }();
      case 'varInternetAddress':
        return stdlib_io.$InternetAddress.wrap($value.varInternetAddress);
      case 'varInternetAddressNullable':
        return () {
          final $ = $value.varInternetAddressNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_io.$InternetAddress.wrap($);
        }();
      case 'varInternetAddressType':
        return stdlib_io.$InternetAddressType
            .wrap($value.varInternetAddressType);
      case 'varInternetAddressTypeNullable':
        return () {
          final $ = $value.varInternetAddressTypeNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_io.$InternetAddressType.wrap($);
        }();
      case 'varIOSink':
        return stdlib_io.$IOSink.wrap($value.varIOSink);
      case 'varIOSinkNullable':
        return () {
          final $ = $value.varIOSinkNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_io.$IOSink.wrap($);
        }();
      case 'varStringSink':
        return stdlib_io.$StringSink.wrap($value.varStringSink);
      case 'varStringSinkNullable':
        return () {
          final $ = $value.varStringSinkNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_io.$StringSink.wrap($);
        }();
      case 'varPoint':
        return stdlib_math.$Point.wrap($value.varPoint);
      case 'varPointNullable':
        return () {
          final $ = $value.varPointNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_math.$Point.wrap($);
        }();
      case 'varByteBuffer':
        return stdlib_typed_data.$ByteBuffer.wrap($value.varByteBuffer);
      case 'varByteBufferNullable':
        return () {
          final $ = $value.varByteBufferNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_typed_data.$ByteBuffer.wrap($);
        }();
      case 'varByteData':
        return stdlib_typed_data.$ByteData.wrap($value.varByteData);
      case 'varByteDataNullable':
        return () {
          final $ = $value.varByteDataNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_typed_data.$ByteData.wrap($);
        }();
      case 'varTypedData':
        return stdlib_typed_data.$TypedData.wrap($value.varTypedData);
      case 'varTypedDataNullable':
        return () {
          final $ = $value.varTypedDataNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_typed_data.$TypedData.wrap($);
        }();
      case 'varUint8List':
        return stdlib_typed_data.$Uint8List.wrap($value.varUint8List);
      case 'varUint8ListNullable':
        return () {
          final $ = $value.varUint8ListNullable;
          return $ == null
              ? const stdlib_core.$null()
              : stdlib_typed_data.$Uint8List.wrap($);
        }();
      case 'varFunction':
        return dart_eval_bridge.$Function((
          dart_eval_bridge.Runtime runtime,
          dart_eval_bridge.$Value? target,
          core.List<dart_eval_bridge.$Value?> args,
        ) {
          return stdlib_core.$String($value.varFunction(
            (dart_eval_bridge.$Value $) {
              final $$ = ($ as core.dynamic);
              return $$ is! core.String ? ($.$reified as core.String) : $$;
            }(args[0]!),
            b: (dart_eval_bridge.$Value $) {
              final $$ = ($ as core.dynamic);
              return $$ is! core.String ? ($.$reified as core.String) : $$;
            }(args[1]!),
            c: (dart_eval_bridge.$Value $) {
              final $$ = ($ as core.dynamic);
              return $$ is stdlib_core.$null
                  ? null
                  : $$ is! core.String?
                      ? ($.$reified as core.String?)
                      : $$;
            }(args[2]!),
          ));
        });
      case 'varFunctionNullable':
        return () {
          final $ = $value.varFunctionNullable;
          return $ == null
              ? const stdlib_core.$null()
              : dart_eval_bridge.$Function((
                  dart_eval_bridge.Runtime runtime,
                  dart_eval_bridge.$Value? target,
                  core.List<dart_eval_bridge.$Value?> args,
                ) {
                  return () {
                    $(
                      (dart_eval_bridge.$Value $) {
                        final $$ = ($ as core.dynamic);
                        return $$ is! core.String
                            ? ($.$reified as core.String)
                            : $$;
                      }(args[0]!),
                      (dart_eval_bridge.$Value $) {
                        final $$ = ($ as core.dynamic);
                        return $$ is! core.String
                            ? ($.$reified as core.String)
                            : $$;
                      }(args[1]!),
                      (dart_eval_bridge.$Value $) {
                        final $$ = ($ as core.dynamic);
                        return $$ is stdlib_core.$null
                            ? null
                            : $$ is! core.String?
                                ? ($.$reified as core.String?)
                                : $$;
                      }(args[2]!),
                    );
                    return null;
                  }();
                });
        }();
      default:
        return _$superWrapper.$getProperty(
          runtime,
          identifier,
        );
    }
  }

  @core.override
  void $setProperty(
    dart_eval_bridge.Runtime runtime,
    core.String identifier,
    dart_eval_bridge.$Value value,
  ) {
    switch (identifier) {
      case 'varCompleter':
        $value.varCompleter = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! async.Completer ? ($.$reified as async.Completer) : $$;
        }(value);
      case 'varCompleterNullable':
        $value.varCompleterNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! async.Completer?
                  ? ($.$reified as async.Completer?)
                  : $$;
        }(value);
      case 'varStream':
        $value.varStream = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! async.Stream ? ($.$reified as async.Stream) : $$;
        }(value);
      case 'varStreamNullable':
        $value.varStreamNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! async.Stream?
                  ? ($.$reified as async.Stream?)
                  : $$;
        }(value);
      case 'varStreamController':
        $value.varStreamController = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! async.StreamController
              ? ($.$reified as async.StreamController)
              : $$;
        }(value);
      case 'varStreamControllerNullable':
        $value.varStreamControllerNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! async.StreamController?
                  ? ($.$reified as async.StreamController?)
                  : $$;
        }(value);
      case 'varStreamSink':
        $value.varStreamSink = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! async.StreamSink
              ? ($.$reified as async.StreamSink)
              : $$;
        }(value);
      case 'varStreamSinkNullable':
        $value.varStreamSinkNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! async.StreamSink?
                  ? ($.$reified as async.StreamSink?)
                  : $$;
        }(value);
      case 'varStreamSubscription':
        $value.varStreamSubscription = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! async.StreamSubscription
              ? ($.$reified as async.StreamSubscription)
              : $$;
        }(value);
      case 'varStreamSubscriptionNullable':
        $value.varStreamSubscriptionNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! async.StreamSubscription?
                  ? ($.$reified as async.StreamSubscription?)
                  : $$;
        }(value);
      case 'varStreamTransformer':
        $value.varStreamTransformer = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! async.StreamTransformer
              ? ($.$reified as async.StreamTransformer)
              : $$;
        }(value);
      case 'varStreamTransformerNullable':
        $value.varStreamTransformerNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! async.StreamTransformer?
                  ? ($.$reified as async.StreamTransformer?)
                  : $$;
        }(value);
      case 'varStreamView':
        $value.varStreamView = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! async.StreamView
              ? ($.$reified as async.StreamView)
              : $$;
        }(value);
      case 'varStreamViewNullable':
        $value.varStreamViewNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! async.StreamView?
                  ? ($.$reified as async.StreamView?)
                  : $$;
        }(value);
      case 'varLinkedHashMap':
        $value.varLinkedHashMap = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! collection.LinkedHashMap
              ? ($.$reified as collection.LinkedHashMap)
              : $$;
        }(value);
      case 'varLinkedHashMapNullable':
        $value.varLinkedHashMapNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! collection.LinkedHashMap?
                  ? ($.$reified as collection.LinkedHashMap?)
                  : $$;
        }(value);
      case 'varCodec':
        $value.varCodec = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! convert.Codec ? ($.$reified as convert.Codec) : $$;
        }(value);
      case 'varCodecNullable':
        $value.varCodecNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! convert.Codec?
                  ? ($.$reified as convert.Codec?)
                  : $$;
        }(value);
      case 'varConverter':
        $value.varConverter = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! convert.Converter
              ? ($.$reified as convert.Converter)
              : $$;
        }(value);
      case 'varConverterNullable':
        $value.varConverterNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! convert.Converter?
                  ? ($.$reified as convert.Converter?)
                  : $$;
        }(value);
      case 'varEncoding':
        $value.varEncoding = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! convert.Encoding
              ? ($.$reified as convert.Encoding)
              : $$;
        }(value);
      case 'varEncodingNullable':
        $value.varEncodingNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! convert.Encoding?
                  ? ($.$reified as convert.Encoding?)
                  : $$;
        }(value);
      case 'varJsonCodec':
        $value.varJsonCodec = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! convert.JsonCodec
              ? ($.$reified as convert.JsonCodec)
              : $$;
        }(value);
      case 'varJsonCodecNullable':
        $value.varJsonCodecNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! convert.JsonCodec?
                  ? ($.$reified as convert.JsonCodec?)
                  : $$;
        }(value);
      case 'varJsonDecoder':
        $value.varJsonDecoder = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! convert.JsonDecoder
              ? ($.$reified as convert.JsonDecoder)
              : $$;
        }(value);
      case 'varJsonDecoderNullable':
        $value.varJsonDecoderNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! convert.JsonDecoder?
                  ? ($.$reified as convert.JsonDecoder?)
                  : $$;
        }(value);
      case 'varJsonEncoder':
        $value.varJsonEncoder = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! convert.JsonEncoder
              ? ($.$reified as convert.JsonEncoder)
              : $$;
        }(value);
      case 'varJsonEncoderNullable':
        $value.varJsonEncoderNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! convert.JsonEncoder?
                  ? ($.$reified as convert.JsonEncoder?)
                  : $$;
        }(value);
      case 'varUtf8Codec':
        $value.varUtf8Codec = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! convert.Utf8Codec
              ? ($.$reified as convert.Utf8Codec)
              : $$;
        }(value);
      case 'varUtf8CodecNullable':
        $value.varUtf8CodecNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! convert.Utf8Codec?
                  ? ($.$reified as convert.Utf8Codec?)
                  : $$;
        }(value);
      case 'varUtf8Decoder':
        $value.varUtf8Decoder = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! convert.Utf8Decoder
              ? ($.$reified as convert.Utf8Decoder)
              : $$;
        }(value);
      case 'varUtf8DecoderNullable':
        $value.varUtf8DecoderNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! convert.Utf8Decoder?
                  ? ($.$reified as convert.Utf8Decoder?)
                  : $$;
        }(value);
      case 'varArgumentError':
        $value.varArgumentError = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.ArgumentError
              ? ($.$reified as core.ArgumentError)
              : $$;
        }(value);
      case 'varArgumentErrorNullable':
        $value.varArgumentErrorNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.ArgumentError?
                  ? ($.$reified as core.ArgumentError?)
                  : $$;
        }(value);
      case 'varAssertionError':
        $value.varAssertionError = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.AssertionError
              ? ($.$reified as core.AssertionError)
              : $$;
        }(value);
      case 'varAssertionErrorNullable':
        $value.varAssertionErrorNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.AssertionError?
                  ? ($.$reified as core.AssertionError?)
                  : $$;
        }(value);
      case 'varbool':
        $value.varbool = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.bool ? ($.$reified as core.bool) : $$;
        }(value);
      case 'varboolNullable':
        $value.varboolNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.bool?
                  ? ($.$reified as core.bool?)
                  : $$;
        }(value);
      case 'varComparable':
        $value.varComparable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.Comparable ? ($.$reified as core.Comparable) : $$;
        }(value);
      case 'varComparableNullable':
        $value.varComparableNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.Comparable?
                  ? ($.$reified as core.Comparable?)
                  : $$;
        }(value);
      case 'varDateTime':
        $value.varDateTime = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.DateTime ? ($.$reified as core.DateTime) : $$;
        }(value);
      case 'varDateTimeNullable':
        $value.varDateTimeNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.DateTime?
                  ? ($.$reified as core.DateTime?)
                  : $$;
        }(value);
      case 'vardouble':
        $value.vardouble = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.double ? ($.$reified as core.double) : $$;
        }(value);
      case 'vardoubleNullable':
        $value.vardoubleNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.double?
                  ? ($.$reified as core.double?)
                  : $$;
        }(value);
      case 'varDuration':
        $value.varDuration = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.Duration ? ($.$reified as core.Duration) : $$;
        }(value);
      case 'varDurationNullable':
        $value.varDurationNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.Duration?
                  ? ($.$reified as core.Duration?)
                  : $$;
        }(value);
      case 'varError':
        $value.varError = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.Error ? ($.$reified as core.Error) : $$;
        }(value);
      case 'varErrorNullable':
        $value.varErrorNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.Error?
                  ? ($.$reified as core.Error?)
                  : $$;
        }(value);
      case 'varException':
        $value.varException = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.Exception ? ($.$reified as core.Exception) : $$;
        }(value);
      case 'varExceptionNullable':
        $value.varExceptionNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.Exception?
                  ? ($.$reified as core.Exception?)
                  : $$;
        }(value);
      case 'varFormatException':
        $value.varFormatException = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.FormatException
              ? ($.$reified as core.FormatException)
              : $$;
        }(value);
      case 'varFormatExceptionNullable':
        $value.varFormatExceptionNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.FormatException?
                  ? ($.$reified as core.FormatException?)
                  : $$;
        }(value);
      case 'varFuture':
        $value.varFuture = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! async.Future ? ($.$reified as async.Future) : $$;
        }(value);
      case 'varFutureNullable':
        $value.varFutureNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! async.Future?
                  ? ($.$reified as async.Future?)
                  : $$;
        }(value);
      case 'varint':
        $value.varint = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.int ? ($.$reified as core.int) : $$;
        }(value);
      case 'varintNullable':
        $value.varintNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.int?
                  ? ($.$reified as core.int?)
                  : $$;
        }(value);
      case 'varIterable':
        $value.varIterable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.Iterable ? ($.$reified as core.Iterable) : $$;
        }(value);
      case 'varIterableNullable':
        $value.varIterableNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.Iterable?
                  ? ($.$reified as core.Iterable?)
                  : $$;
        }(value);
      case 'varList':
        $value.varList = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.List ? ($.$reified as core.List) : $$;
        }(value);
      case 'varListNullable':
        $value.varListNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.List?
                  ? ($.$reified as core.List?)
                  : $$;
        }(value);
      case 'varMap':
        $value.varMap = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.Map ? ($.$reified as core.Map) : $$;
        }(value);
      case 'varMapNullable':
        $value.varMapNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.Map?
                  ? ($.$reified as core.Map?)
                  : $$;
        }(value);
      case 'varMapEntry':
        $value.varMapEntry = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.MapEntry ? ($.$reified as core.MapEntry) : $$;
        }(value);
      case 'varMapEntryNullable':
        $value.varMapEntryNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.MapEntry?
                  ? ($.$reified as core.MapEntry?)
                  : $$;
        }(value);
      case 'varMatch':
        $value.varMatch = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.Match ? ($.$reified as core.Match) : $$;
        }(value);
      case 'varMatchNullable':
        $value.varMatchNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.Match?
                  ? ($.$reified as core.Match?)
                  : $$;
        }(value);
      case 'varnum':
        $value.varnum = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.num ? ($.$reified as core.num) : $$;
        }(value);
      case 'varnumNullable':
        $value.varnumNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.num?
                  ? ($.$reified as core.num?)
                  : $$;
        }(value);
      case 'varObject':
        $value.varObject = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.Object ? ($.$reified as core.Object) : $$;
        }(value);
      case 'varObjectNullable':
        $value.varObjectNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.Object?
                  ? ($.$reified as core.Object?)
                  : $$;
        }(value);
      case 'varPattern':
        $value.varPattern = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.Pattern ? ($.$reified as core.Pattern) : $$;
        }(value);
      case 'varPatternNullable':
        $value.varPatternNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.Pattern?
                  ? ($.$reified as core.Pattern?)
                  : $$;
        }(value);
      case 'varRangeError':
        $value.varRangeError = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.RangeError ? ($.$reified as core.RangeError) : $$;
        }(value);
      case 'varRangeErrorNullable':
        $value.varRangeErrorNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.RangeError?
                  ? ($.$reified as core.RangeError?)
                  : $$;
        }(value);
      case 'varRegExp':
        $value.varRegExp = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.RegExp ? ($.$reified as core.RegExp) : $$;
        }(value);
      case 'varRegExpNullable':
        $value.varRegExpNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.RegExp?
                  ? ($.$reified as core.RegExp?)
                  : $$;
        }(value);
      case 'varRegExpMatch':
        $value.varRegExpMatch = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.RegExpMatch
              ? ($.$reified as core.RegExpMatch)
              : $$;
        }(value);
      case 'varRegExpMatchNullable':
        $value.varRegExpMatchNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.RegExpMatch?
                  ? ($.$reified as core.RegExpMatch?)
                  : $$;
        }(value);
      case 'varStackTrace':
        $value.varStackTrace = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.StackTrace ? ($.$reified as core.StackTrace) : $$;
        }(value);
      case 'varStackTraceNullable':
        $value.varStackTraceNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.StackTrace?
                  ? ($.$reified as core.StackTrace?)
                  : $$;
        }(value);
      case 'varStateError':
        $value.varStateError = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.StateError ? ($.$reified as core.StateError) : $$;
        }(value);
      case 'varStateErrorNullable':
        $value.varStateErrorNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.StateError?
                  ? ($.$reified as core.StateError?)
                  : $$;
        }(value);
      case 'varString':
        $value.varString = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.String ? ($.$reified as core.String) : $$;
        }(value);
      case 'varStringNullable':
        $value.varStringNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.String?
                  ? ($.$reified as core.String?)
                  : $$;
        }(value);
      case 'varStringBuffer':
        $value.varStringBuffer = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.StringBuffer
              ? ($.$reified as core.StringBuffer)
              : $$;
        }(value);
      case 'varStringBufferNullable':
        $value.varStringBufferNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.StringBuffer?
                  ? ($.$reified as core.StringBuffer?)
                  : $$;
        }(value);
      case 'varUnimplementedError':
        $value.varUnimplementedError = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.UnimplementedError
              ? ($.$reified as core.UnimplementedError)
              : $$;
        }(value);
      case 'varUnimplementedErrorNullable':
        $value.varUnimplementedErrorNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.UnimplementedError?
                  ? ($.$reified as core.UnimplementedError?)
                  : $$;
        }(value);
      case 'varUnsupportedError':
        $value.varUnsupportedError = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.UnsupportedError
              ? ($.$reified as core.UnsupportedError)
              : $$;
        }(value);
      case 'varUnsupportedErrorNullable':
        $value.varUnsupportedErrorNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.UnsupportedError?
                  ? ($.$reified as core.UnsupportedError?)
                  : $$;
        }(value);
      case 'varUri':
        $value.varUri = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.Uri ? ($.$reified as core.Uri) : $$;
        }(value);
      case 'varUriNullable':
        $value.varUriNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.Uri?
                  ? ($.$reified as core.Uri?)
                  : $$;
        }(value);
      case 'varDirectory':
        $value.varDirectory = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! io.Directory ? ($.$reified as io.Directory) : $$;
        }(value);
      case 'varDirectoryNullable':
        $value.varDirectoryNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! io.Directory?
                  ? ($.$reified as io.Directory?)
                  : $$;
        }(value);
      case 'varFile':
        $value.varFile = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! io.File ? ($.$reified as io.File) : $$;
        }(value);
      case 'varFileNullable':
        $value.varFileNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! io.File?
                  ? ($.$reified as io.File?)
                  : $$;
        }(value);
      case 'varFileSystemEntity':
        $value.varFileSystemEntity = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! io.FileSystemEntity
              ? ($.$reified as io.FileSystemEntity)
              : $$;
        }(value);
      case 'varFileSystemEntityNullable':
        $value.varFileSystemEntityNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! io.FileSystemEntity?
                  ? ($.$reified as io.FileSystemEntity?)
                  : $$;
        }(value);
      case 'varHttpClient':
        $value.varHttpClient = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! io.HttpClient ? ($.$reified as io.HttpClient) : $$;
        }(value);
      case 'varHttpClientNullable':
        $value.varHttpClientNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! io.HttpClient?
                  ? ($.$reified as io.HttpClient?)
                  : $$;
        }(value);
      case 'varHttpClientRequest':
        $value.varHttpClientRequest = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! io.HttpClientRequest
              ? ($.$reified as io.HttpClientRequest)
              : $$;
        }(value);
      case 'varHttpClientRequestNullable':
        $value.varHttpClientRequestNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! io.HttpClientRequest?
                  ? ($.$reified as io.HttpClientRequest?)
                  : $$;
        }(value);
      case 'varHttpClientResponse':
        $value.varHttpClientResponse = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! io.HttpClientResponse
              ? ($.$reified as io.HttpClientResponse)
              : $$;
        }(value);
      case 'varHttpClientResponseNullable':
        $value.varHttpClientResponseNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! io.HttpClientResponse?
                  ? ($.$reified as io.HttpClientResponse?)
                  : $$;
        }(value);
      case 'varInternetAddress':
        $value.varInternetAddress = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! io.InternetAddress
              ? ($.$reified as io.InternetAddress)
              : $$;
        }(value);
      case 'varInternetAddressNullable':
        $value.varInternetAddressNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! io.InternetAddress?
                  ? ($.$reified as io.InternetAddress?)
                  : $$;
        }(value);
      case 'varInternetAddressType':
        $value.varInternetAddressType = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! io.InternetAddressType
              ? ($.$reified as io.InternetAddressType)
              : $$;
        }(value);
      case 'varInternetAddressTypeNullable':
        $value.varInternetAddressTypeNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! io.InternetAddressType?
                  ? ($.$reified as io.InternetAddressType?)
                  : $$;
        }(value);
      case 'varIOSink':
        $value.varIOSink = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! io.IOSink ? ($.$reified as io.IOSink) : $$;
        }(value);
      case 'varIOSinkNullable':
        $value.varIOSinkNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! io.IOSink?
                  ? ($.$reified as io.IOSink?)
                  : $$;
        }(value);
      case 'varStringSink':
        $value.varStringSink = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.StringSink ? ($.$reified as core.StringSink) : $$;
        }(value);
      case 'varStringSinkNullable':
        $value.varStringSinkNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! core.StringSink?
                  ? ($.$reified as core.StringSink?)
                  : $$;
        }(value);
      case 'varPoint':
        $value.varPoint = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! math.Point ? ($.$reified as math.Point) : $$;
        }(value);
      case 'varPointNullable':
        $value.varPointNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! math.Point?
                  ? ($.$reified as math.Point?)
                  : $$;
        }(value);
      case 'varByteBuffer':
        $value.varByteBuffer = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! typed_data.ByteBuffer
              ? ($.$reified as typed_data.ByteBuffer)
              : $$;
        }(value);
      case 'varByteBufferNullable':
        $value.varByteBufferNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! typed_data.ByteBuffer?
                  ? ($.$reified as typed_data.ByteBuffer?)
                  : $$;
        }(value);
      case 'varByteData':
        $value.varByteData = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! typed_data.ByteData
              ? ($.$reified as typed_data.ByteData)
              : $$;
        }(value);
      case 'varByteDataNullable':
        $value.varByteDataNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! typed_data.ByteData?
                  ? ($.$reified as typed_data.ByteData?)
                  : $$;
        }(value);
      case 'varTypedData':
        $value.varTypedData = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! typed_data.TypedData
              ? ($.$reified as typed_data.TypedData)
              : $$;
        }(value);
      case 'varTypedDataNullable':
        $value.varTypedDataNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! typed_data.TypedData?
                  ? ($.$reified as typed_data.TypedData?)
                  : $$;
        }(value);
      case 'varUint8List':
        $value.varUint8List = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! typed_data.Uint8List
              ? ($.$reified as typed_data.Uint8List)
              : $$;
        }(value);
      case 'varUint8ListNullable':
        $value.varUint8ListNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! typed_data.Uint8List?
                  ? ($.$reified as typed_data.Uint8List?)
                  : $$;
        }(value);
      case 'varFunction':
        $value.varFunction = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is! core.String Function(
            core.String, {
            required core.String b,
            core.String? c,
          })
              ? ($.$reified as core.String Function(
                  core.String, {
                  required core.String b,
                  core.String? c,
                }))
              : $$;
        }(value);
      case 'varFunctionNullable':
        $value.varFunctionNullable = (dart_eval_bridge.$Value $) {
          final $$ = ($ as core.dynamic);
          return $$ is stdlib_core.$null
              ? null
              : $$ is! void Function(
                  core.String, [
                  core.String,
                  core.String?,
                ])?
                  ? ($.$reified as void Function(
                      core.String, [
                      core.String,
                      core.String?,
                    ])?)
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

  @core.override
  core.int $getRuntimeType(dart_eval_bridge.Runtime runtime) {
    return runtime.lookupType($type);
  }

  static dart_eval_bridge.$Value? _voidMethod(
    dart_eval_bridge.Runtime runtime,
    dart_eval_bridge.$Value? target,
    core.List<dart_eval_bridge.$Value?> args,
  ) {
    return () {
      (target!.$value as TypesContainer).voidMethod();
      return null;
    }();
  }
}
