import 'dart:math';
import 'dart:ui';

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:inline_alignment/src/intercepting_paragraph_builder.dart';

class InlineAlignmentLayoutWidget extends StatelessWidget implements Text {
  const InlineAlignmentLayoutWidget({
    required this.content,
    required this.time,
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  @override
  String? get data => null;

  @override
  final Locale? locale;

  @override
  final int? maxLines;

  @override
  final TextOverflow? overflow;

  @override
  final Color? selectionColor;

  @override
  final String? semanticsLabel;

  @override
  final bool? softWrap;

  @override
  final StrutStyle? strutStyle;

  @override
  final TextStyle? style;

  @override
  final TextAlign? textAlign;

  @override
  final TextDirection? textDirection;

  @override
  final TextHeightBehavior? textHeightBehavior;

  @override
  double? get textScaleFactor => null;

  @override
  final TextScaler? textScaler;

  @override
  InlineSpan get textSpan => content;

  @override
  final TextWidthBasis? textWidthBasis;

  /// The main content of this chat bubble.
  final InlineSpan content;

  /// The widget that displays the send at time.
  final Widget time;

  @override
  Widget build(BuildContext context) {
    return _InlineAlignmentLayoutWidget(this);
  }
}

enum _InlineAlignmentLayoutSlots {
  content,
  time,
}

class _InlineAlignmentLayoutWidget extends SlottedMultiChildRenderObjectWidget<
    _InlineAlignmentLayoutSlots, RenderBox> {
  _InlineAlignmentLayoutWidget(this.widget);

  final InlineAlignmentLayoutWidget widget;

  @override
  Widget? childForSlot(slot) {
    return switch (slot) {
      _InlineAlignmentLayoutSlots.content => Text.rich(
          widget.content,
          locale: widget.locale,
          maxLines: widget.maxLines,
          overflow: widget.overflow,
          selectionColor: widget.selectionColor,
          semanticsLabel: widget.semanticsLabel,
          softWrap: widget.softWrap,
          strutStyle: widget.strutStyle,
          style: widget.style,
          textAlign: widget.textAlign,
          textDirection: widget.textDirection,
          textHeightBehavior: widget.textHeightBehavior,
          textScaler: widget.textScaler,
          textWidthBasis: widget.textWidthBasis,
        ),
      _InlineAlignmentLayoutSlots.time => widget.time,
    };
  }

  @override
  _RenderInlineAlignmentLayout createRenderObject(BuildContext context) {
    return _RenderInlineAlignmentLayout();
  }

  @override
  Iterable<_InlineAlignmentLayoutSlots> get slots =>
      _InlineAlignmentLayoutSlots.values;
}

class _RenderInlineAlignmentLayout extends RenderBox
    with
        SlottedContainerRenderObjectMixin<_InlineAlignmentLayoutSlots,
            RenderBox>,
        DebugOverflowIndicatorMixin {
  _RenderInlineAlignmentLayout();

  RenderParagraph get _contentBox {
    final box = childForSlot(_InlineAlignmentLayoutSlots.content)!;

    if (box is RenderParagraph) {
      return box;
    } else {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('Unexpected RenderTree.'),
        ErrorDescription('Expected an RenderParagraph in the render tree.'
            'But found none.'),
      ]);
    }
  }

  RenderBox get _timeBox => childForSlot(_InlineAlignmentLayoutSlots.time)!;

  @override
  void performLayout() {
    final contentBox = _contentBox;
    final timeBox = _timeBox;

    contentBox.layout(constraints, parentUsesSize: true);

    final placeholderBoxes = <PlaceholderDimensions>[];
    contentBox.visitChildren((c) {
      final child = c as RenderBox;
      final TextParentData parentData = child.parentData! as TextParentData;

      final PlaceholderSpan? span = parentData.span;
      assert(span != null);
      placeholderBoxes.add(span == null
          ? PlaceholderDimensions.empty
          : PlaceholderDimensions(
              size: c.size,
              alignment: span.alignment,
              baseline: span.baseline,
              baselineOffset: switch (span.alignment) {
                PlaceholderAlignment.aboveBaseline ||
                PlaceholderAlignment.belowBaseline ||
                PlaceholderAlignment.bottom ||
                PlaceholderAlignment.middle ||
                PlaceholderAlignment.top =>
                  null,
                PlaceholderAlignment.baseline => ChildLayoutHelper.getBaseline(
                    child,
                    BoxConstraints(maxWidth: constraints.maxWidth),
                    span.baseline!),
              },
            ));
    });

    timeBox.layout(constraints.loosen(), parentUsesSize: true);

    final TextStyle baseStyle = contentBox.text.style ?? const TextStyle();

    final builder = ParagraphBuilder(baseStyle.getParagraphStyle(
      textAlign: contentBox.textAlign,
      textDirection: contentBox.textDirection,
      textScaler: contentBox.textScaler,
      maxLines: contentBox.maxLines,
      textHeightBehavior: contentBox.textHeightBehavior,
      ellipsis: contentBox.overflow == TextOverflow.ellipsis ? '\u2026' : null,
      locale: contentBox.locale,
      strutStyle: contentBox.strutStyle,
    ));

    contentBox.text.build(builder,
        textScaler: contentBox.textScaler, dimensions: placeholderBoxes);
    final paragraph = builder.build();
    paragraph.layout(ParagraphConstraints(width: contentBox.size.width));

    _positionChild(contentBox, Offset.zero);
    if (paragraph.numberOfLines > 0) {
      final lastLine = paragraph.getLineMetricsAt(paragraph.numberOfLines - 1)!;

      switch (contentBox.textDirection) {
        case TextDirection.ltr:
          if (contentBox.size.width - (lastLine.left + lastLine.width) >=
              timeBox.size.width) {
            // The time fits
            //TODO: consider cases where the time is higher then the last line
            //TODO: alignment options
            //TODO: make shure the size calculation is correct.
            _positionChild(
                timeBox,
                Offset(contentBox.size.width - timeBox.size.width,
                    contentBox.size.height - lastLine.height));
            size = Size(
                contentBox.size.width,
                contentBox.size.height +
                    max(0, timeBox.size.height - lastLine.height));
          } else {
            // Time goes into the next line
            //TODO: consider cases where the time is wider then the content.
            _positionChild(
                timeBox,
                Offset(contentBox.size.width - timeBox.size.width,
                    contentBox.size.height));
            size = Size(contentBox.size.width,
                contentBox.size.height + timeBox.size.height);
          }
        case TextDirection.rtl:
          //TODO: Implement TextDirection.rtl
          throw UnimplementedError(
              'TextDirection.ltr is currently unimplemented');
      }
    } else {
      _positionChild(timeBox, Offset.zero);
      size = constraints.constrain(timeBox.size);
    }
  }

  void _positionChild(RenderBox child, Offset offset) {
    (child.parentData! as BoxParentData).offset = offset;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    void paintChild(RenderBox child, PaintingContext context, Offset offset) {
      final BoxParentData childParentData = child.parentData! as BoxParentData;
      context.paintChild(child, childParentData.offset + offset);
    }

    paintChild(_timeBox, context, offset);
    paintChild(_contentBox, context, offset);
  }
}
