part of 'stack.dart';

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
  void performLayout() {
    var parent = this.parent;
    while (parent != null) {
      if (parent is MarkerCollector) {
        parent._markers.add(() => offset);
        break;
      }
      parent = parent.parent;
    }
    super.performLayout();
  }

  @override
  Size computeDryLayout(covariant BoxConstraints constraints) {
    return constraints.constrain(Size.zero);
  }

  Offset get offset {
    RenderObject? box = this;
    while (box != null) {
      final parent = box.parent;
      if (parent is MarkerCollector) {
        return parent.globalToLocal(localToGlobal(Offset.zero));
      }

      box = parent;
    }
    throw FlutterError(
        'RenderInlineAlignmentMarker is not a child of a MarkerCollector.');
  }
}

mixin MarkerCollector on RenderBox {
  List<Offset Function()> _markers = [];
}
