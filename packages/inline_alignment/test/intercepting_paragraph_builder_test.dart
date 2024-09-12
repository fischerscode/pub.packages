import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:inline_alignment/src/intercepting_paragraph_builder.dart';

void main() {
  test('Test interception', () {
    final builder = InterceptingParagraphBuilder(ParagraphStyle());

    expect(builder.paragraph, isNull);

    builder.build();

    expect(builder.paragraph, isNotNull);
  });
}
