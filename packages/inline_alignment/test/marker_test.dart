import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inline_alignment/src/marker.dart';

void main() {
  testWidgets(
      'InlineAlignmentMarker adds RenderInlineAlignmentMarker to the tree',
      (WidgetTester tester) async {
    final testWidget = RichText(
      text: const TextSpan(
        children: [
          TextSpan(text: 'Hello, '),
          InlineAlignmentMarker(alignment: PlaceholderAlignment.top),
          InlineAlignmentMarker(alignment: PlaceholderAlignment.baseline),
          InlineAlignmentMarker(alignment: PlaceholderAlignment.bottom),
          TextSpan(text: 'world!'),
        ],
      ),
    );

    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: testWidget,
    ));

    final finder = find.byType(InlineAlignmentMarkerWidget);
    expect(finder, findsNWidgets(3));

    final markers = tester.renderObjectList(finder);
    expect(markers, hasLength(3));
    expect(markers, everyElement(isA<RenderInlineAlignmentMarker>()));

    final offsets =
        markers.map((e) => (e as RenderInlineAlignmentMarker).offset).toList();

    expect(
        offsets,
        predicate<List<Offset>>(
          (offsets) {
            for (int i = 1; i < offsets.length; i++) {
              if (offsets[i].dy <= offsets[i - 1].dy) {
                return false;
              }
            }
            return true;
          },
          'The y coordinates should be in increasing order.',
        ));
  });
}
