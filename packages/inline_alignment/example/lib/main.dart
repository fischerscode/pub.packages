import 'package:flutter/material.dart';
import 'package:inline_alignment/inline_alignment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        showPerformanceOverlay: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,
    );
    TextStyle timeStamptStyle = const TextStyle(
        fontFamily: 'SF-Pro-Text',
        fontSize: 12, //11.5,
        fontWeight: FontWeight.w400,
        color: Colors.black54);

    return Material(
      type: MaterialType.transparency,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.cyanAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                padding: const EdgeInsets.all(10),
                child: InlineAlignmentLayoutWidget(
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 30,
                    style: style,
                    textWidthBasis: TextWidthBasis.longestLine,
                    textAlign: TextAlign.left,
                    content: TextSpan(children: [
                      TextSpan(
                        text:
                            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. -',
                      ),
                      WidgetSpan(
                        child: Container(
                          width: 10,
                          height: 10,
                          color: Colors.amber,
                        ),
                      ),
                    ], style: style),
                    time: Text(
                      '14:55',
                      style: timeStamptStyle,
                    )),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.cyanAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                padding: const EdgeInsets.all(10),
                //   child: InlineAlignmentLayoutWidget(
                //       overflow: TextOverflow.ellipsis,
                //       softWrap: true,
                //       maxLines: 30,
                //       style: style,
                //       textWidthBasis: TextWidthBasis.longestLine,
                //       textAlign: TextAlign.left,
                //       content: TextSpan(
                //           text:
                //               'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.',
                //           style: style),
                //       time: Text(
                //         '14:55xx',
                //         style: timeStamptStyle,
                //       )),
              ),
            ),
          ]),
    );
  }
}
