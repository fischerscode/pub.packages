import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inline_alignment/src/stack.dart';

void main() {
  testWidgets('Test InlineAlignedStack', (WidgetTester tester) async {
    final testWidget = Center(
      child: RepaintBoundary(
        child: InlineAlignedStack.callback(
          callback: (List<Size> sizes, List<Offset> markers,
              BoxConstraints constraints) {
            return [
              Offset.zero,
              Offset.zero,
              ...markers,
            ];
          },
          children: [
            const Text.rich(TextSpan(
              children: [
                TextSpan(text: 'Hello, '),
                InlineAlignmentMarker(alignment: PlaceholderAlignment.top),
                InlineAlignmentMarker(alignment: PlaceholderAlignment.baseline),
                InlineAlignmentMarker(alignment: PlaceholderAlignment.bottom),
                TextSpan(text: 'world!'),
              ],
            )),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text.rich(TextSpan(
                children: [
                  TextSpan(text: 'Hello, '),
                  InlineAlignmentMarker(alignment: PlaceholderAlignment.top),
                  InlineAlignmentMarker(
                      alignment: PlaceholderAlignment.baseline),
                  InlineAlignmentMarker(alignment: PlaceholderAlignment.bottom),
                  TextSpan(text: 'world!'),
                ],
              )),
            ),
            ...[
              const Color.fromARGB(255, 255, 0, 0),
              const Color.fromARGB(255, 255, 153, 0),
              const Color.fromARGB(255, 255, 255, 0),
              const Color.fromARGB(255, 0, 255, 38),
              const Color.fromARGB(255, 0, 221, 255),
              const Color.fromARGB(255, 0, 8, 255),
            ].map((c) => DecoratedBox(
                decoration: BoxDecoration(border: Border.all(color: c)),
                child: const SizedBox.square(dimension: 5)))
          ],
        ),
      ),
    );

    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: testWidget,
    ));

    await expectLater(find.byType(InlineAlignedStack),
        matchesGoldenFile('goldens/stack_1.png'));
  });
}
