// Copyright (c) 2023, Maximilian Fischer
// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wrapfit/src/rendering.dart';
import 'package:wrapfit/src/widget.dart';

void verify(WidgetTester tester, List<Offset> answerKey) {
  final List<Offset> testAnswers = tester
      .renderObjectList<RenderBox>(find.byType(SizedBox))
      .map<Offset>(
        (RenderBox target) => target.localToGlobal(Offset.zero),
      )
      .toList();
  expect(testAnswers, equals(answerKey));
}

void verifySize(WidgetTester tester, List<Size> answerKey) {
  final Iterable<Size> testAnswers =
      tester.renderObjectList<RenderBox>(find.byType(SizedBox)).map<Size>(
            (RenderBox target) => target.size,
          );
  expect(testAnswers, equals(answerKey));
}

void main() {
  testWidgets('WrapFit horizontal', (WidgetTester tester) async {
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: Wrap2(
          // Children are formatted by the run, they are in.
          children: <Widget>[
            // Test WrapFit.loose
            SizedBox(width: 200, height: 1), SizedBox(width: 600, height: 1),
            SizedBox(width: 200, height: 1),
            SizedBox(width: 601, height: 1),

            // Test WrapFit.tight
            SizedBox(width: 200, height: 1),
            Wrapped(fit: WrapFit.tight, child: SizedBox(width: 200, height: 1)),
            Wrapped(fit: WrapFit.tight, child: SizedBox(width: 200, height: 1)),

            // Test WrapFit.runTight
            SizedBox(width: 200, height: 1),
            Wrapped(child: SizedBox(width: 600, height: 1)),
            SizedBox(width: 200, height: 1),
            Wrapped(child: SizedBox(width: 400, height: 1)),
            SizedBox(width: 200, height: 1),
            Wrapped(child: SizedBox(width: 601, height: 1)),
            Wrapped(child: SizedBox(width: 200, height: 1)),

            // Test WrapFit.runLoose
            SizedBox(width: 200, height: 1),
            Wrapped(
                fit: WrapFit.runLoose, child: SizedBox(width: 600, height: 1)),
            SizedBox(width: 200, height: 1),
            Wrapped(
                fit: WrapFit.runLoose, child: SizedBox(width: 400, height: 1)),
            Wrapped(
                fit: WrapFit.runLoose, child: SizedBox(width: 200, height: 1)),
            SizedBox(width: 200, height: 1),
            Wrapped(
                fit: WrapFit.runLoose, child: SizedBox(width: 400, height: 1)),
            Wrapped(
                fit: WrapFit.runLoose, child: SizedBox(width: 100, height: 1)),
            SizedBox(width: 200, height: 1),
            Wrapped(
                fit: WrapFit.runLoose, child: SizedBox(width: 601, height: 1)),
            Wrapped(
                fit: WrapFit.runLoose, child: SizedBox(width: 200, height: 1)),
          ],
        ),
      ),
    );

    expect(tester.renderObject<RenderBox>(find.byType(Wrap2)).size,
        equals(const Size(800.0, 600.0)));
    verify(tester, const <Offset>[
      Offset.zero,
      Offset(200, 0),
      Offset(0, 1),
      Offset(0, 2),
      Offset(0, 3),
      Offset(0, 4),
      Offset(0, 5),
      Offset(0, 6),
      Offset(200, 6),
      Offset(0, 7),
      Offset(200, 7),
      Offset(0, 8),
      Offset(0, 9),
      Offset(0, 10),
      Offset(0, 11),
      Offset(200, 11),
      Offset(0, 12),
      Offset(200, 12),
      Offset(600, 12),
      Offset(0, 13),
      Offset(200, 13),
      Offset(600, 13),
      Offset(0, 14),
      Offset(0, 15),
      Offset(0, 16),
    ]);

    verifySize(tester, const <Size>[
      Size(200, 1),
      Size(600, 1),
      Size(200, 1),
      Size(601, 1),
      Size(200, 1),
      Size(800, 1),
      Size(800, 1),
      Size(200, 1),
      Size(600, 1),
      Size(200, 1),
      Size(600, 1),
      Size(200, 1),
      Size(800, 1),
      Size(800, 1),
      Size(200, 1),
      Size(600, 1),
      Size(200, 1),
      Size(400, 1),
      Size(200, 1),
      Size(200, 1),
      Size(400, 1),
      Size(100, 1),
      Size(200, 1),
      Size(601, 1),
      Size(200, 1),
    ]);
  });

  testWidgets('WrapFit vertical', (WidgetTester tester) async {
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: Wrap2(
          direction: Axis.vertical,
          // Children are formatted by the run, they are in.
          children: <Widget>[
            // Test WrapFit.loose
            SizedBox(width: 1, height: 200), SizedBox(width: 1, height: 400),
            SizedBox(width: 1, height: 200),
            SizedBox(width: 1, height: 401),

            // Test WrapFit.tight
            SizedBox(width: 1, height: 200),
            Wrapped(fit: WrapFit.tight, child: SizedBox(width: 1, height: 200)),
            Wrapped(fit: WrapFit.tight, child: SizedBox(width: 1, height: 200)),

            // Test WrapFit.runTight
            SizedBox(width: 1, height: 200),
            Wrapped(child: SizedBox(width: 1, height: 400)),
            SizedBox(width: 1, height: 200),
            Wrapped(child: SizedBox(width: 1, height: 200)),
            SizedBox(width: 1, height: 200),
            Wrapped(child: SizedBox(width: 1, height: 401)),
            Wrapped(child: SizedBox(width: 1, height: 200)),

            // Test WrapFit.runLoose
            SizedBox(width: 1, height: 200),
            Wrapped(
                fit: WrapFit.runLoose, child: SizedBox(width: 1, height: 400)),
            SizedBox(width: 1, height: 200),
            Wrapped(
                fit: WrapFit.runLoose, child: SizedBox(width: 1, height: 200)),
            Wrapped(
                fit: WrapFit.runLoose, child: SizedBox(width: 1, height: 200)),
            SizedBox(width: 1, height: 200),
            Wrapped(
                fit: WrapFit.runLoose, child: SizedBox(width: 1, height: 200)),
            Wrapped(
                fit: WrapFit.runLoose, child: SizedBox(width: 1, height: 100)),
            SizedBox(width: 1, height: 200),
            Wrapped(
                fit: WrapFit.runLoose, child: SizedBox(width: 1, height: 401)),
            Wrapped(
                fit: WrapFit.runLoose, child: SizedBox(width: 1, height: 200)),
          ],
        ),
      ),
    );

    expect(tester.renderObject<RenderBox>(find.byType(Wrap2)).size,
        equals(const Size(800.0, 600.0)));
    verify(tester, const <Offset>[
      Offset.zero,
      Offset(0, 200),
      Offset(1, 0),
      Offset(2, 0),
      Offset(3, 0),
      Offset(4, 0),
      Offset(5, 0),
      Offset(6, 0),
      Offset(6, 200),
      Offset(7, 0),
      Offset(7, 200),
      Offset(8, 0),
      Offset(9, 0),
      Offset(10, 0),
      Offset(11, 0),
      Offset(11, 200),
      Offset(12, 0),
      Offset(12, 200),
      Offset(12, 400),
      Offset(13, 0),
      Offset(13, 200),
      Offset(13, 400),
      Offset(14, 0),
      Offset(15, 0),
      Offset(16, 0),
    ]);

    verifySize(tester, const <Size>[
      Size(1, 200),
      Size(1, 400),
      Size(1, 200),
      Size(1, 401),
      Size(1, 200),
      Size(1, 600),
      Size(1, 600),
      Size(1, 200),
      Size(1, 400),
      Size(1, 200),
      Size(1, 400),
      Size(1, 200),
      Size(1, 600),
      Size(1, 600),
      Size(1, 200),
      Size(1, 400),
      Size(1, 200),
      Size(1, 200),
      Size(1, 200),
      Size(1, 200),
      Size(1, 200),
      Size(1, 100),
      Size(1, 200),
      Size(1, 401),
      Size(1, 200),
    ]);
  });

  testWidgets('Wrapped', (WidgetTester tester) async {
    expect(const Wrapped(child: SizedBox()).fit, WrapFit.runTight);

    Wrap2ParentData getParentData() {
      return tester.renderObject(find.byType(SizedBox)).parentData!
          as Wrap2ParentData;
    }

    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: Wrap2(
          children: <Widget>[
            SizedBox(),
          ],
        ),
      ),
    );
    expect(getParentData().fit, WrapFit.loose);

    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: Wrap2(
          children: <Widget>[
            Wrapped(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
    expect(getParentData().fit, WrapFit.runTight);

    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: Wrap2(
          children: <Widget>[
            Wrapped(
              fit: WrapFit.runLoose,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
    expect(getParentData().fit, WrapFit.runLoose);

    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: Wrap2(
          children: <Widget>[
            Wrapped(
              fit: WrapFit.tight,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
    expect(getParentData().fit, WrapFit.tight);

    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: Wrap2(
          children: <Widget>[
            Wrapped(
              fit: WrapFit.tight,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
    expect(getParentData().fit, WrapFit.tight);
  });

  test('Test WrapFit getters', () {
    for (final WrapFit fit in WrapFit.values) {
      expect(fit.isLoose != fit.isTight, true);
    }
  });
}
