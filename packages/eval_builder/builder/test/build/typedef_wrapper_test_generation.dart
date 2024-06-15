import 'dart:typed_data' as typed;

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/dart_eval_extensions.dart';
import 'package:dart_eval/stdlib/typed_data.dart';

part 'typedef_wrapper_test_generation.golden.dart';

typedef ByteBufferAlias = typed.ByteBuffer;

class TypeDefTestClass {
  TypeDefTestClass(this.field, {required this.fieldNullable});

  final ByteBufferAlias field;
  final ByteBufferAlias? fieldNullable;
  ByteBufferAlias test(ByteBufferAlias t) => t;
  static ByteBufferAlias staticTest(ByteBufferAlias t) => t;
}
