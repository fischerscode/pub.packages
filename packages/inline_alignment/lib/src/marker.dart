import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

/// An [InlineAlignmentMarker] tracks an inline position in a paragraph.
/// By injecting an [InlineAlignmentMarkerWidget] that is backed by a
/// [RenderInlineAlignmentMarker] in the render tree.
class InlineAlignmentMarker extends WidgetSpan {
  const InlineAlignmentMarker({super.alignment})
      : super(
            child: const InlineAlignmentMarkerWidget(),
            baseline: TextBaseline.ideographic);
}

/// The widget used by an [InlineAlignmentMarker] to track positions in a
/// paragraph.
class InlineAlignmentMarkerWidget extends LeafRenderObjectWidget {
  const InlineAlignmentMarkerWidget({super.key});

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderInlineAlignmentMarker();
  }
}

/// Reports the position in a paragraph at a [InlineAlignmentMarker].
class RenderInlineAlignmentMarker extends RenderBox {
  @override
  bool get sizedByParent => true;

  @override
  Size computeDryLayout(covariant BoxConstraints constraints) {
    return constraints.constrain(Size.zero);
  }

  Offset get offset {
    RenderObject? box = this;
    while (box != null) {
      if (box.parent is RenderParagraph) {
        final offset = (box.parentData as TextParentData).offset;
        if (offset != null) {
          return offset;
        } else {
          throw FlutterError('RenderInlineAlignmentMarker needs to be layed '
              'out before accessing offset.');
        }
      }

      box = box.parent;
    }
    throw FlutterError(
        'RenderInlineAlignmentMarker is not a child of a RenderParagraph.');
  }
}
