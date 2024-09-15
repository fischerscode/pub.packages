import 'dart:math';

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

part 'marker.dart';

abstract class InlineAlignmentDelegate {
  const InlineAlignmentDelegate();

  /// {@template inline_aligner.positionChildren}
  /// Positions the children of an [InlineAlignedStack] based on their sizes,
  /// the [InlineMarker]s and the constraints of the parent.
  ///
  /// The result must have the same length as [sizes].
  /// {@endtemplate}
  List<Offset> positionChildren(
      List<Size> sizes, List<Offset> markers, BoxConstraints constraints);

  /// Used to decide if changing to this delegate should trigger a relayout.
  /// [previous] is guaranteed to be of the same type as this.
  bool shouldRelayout(covariant InlineAlignmentDelegate previous) => true;
}

/// {@macro inline_aligner.positionChildren}}
typedef InlineAlignmentCallback = List<Offset> Function(
    List<Size> sizes, List<Offset> markers, BoxConstraints constraints);

class _CallbackInlineAlignmentDelegate extends InlineAlignmentDelegate {
  const _CallbackInlineAlignmentDelegate(this.callback);

  final InlineAlignmentCallback callback;

  @override
  List<Offset> positionChildren(
      List<Size> sizes, List<Offset> markers, BoxConstraints constraints) {
    return callback(sizes, markers, constraints);
  }
}

/// A [Stack] like widget that uses a [InlineAlignmentDelegate] to align its
/// [children] based on [InlineMarker]s in the [Text]s.
class InlineAlignedStack extends MultiChildRenderObjectWidget {
  const InlineAlignedStack({
    super.key,
    required super.children,
    required this.delegate,
  });

  InlineAlignedStack.callback({
    super.key,
    required super.children,
    required InlineAlignmentCallback callback,
  }) : delegate = _CallbackInlineAlignmentDelegate(callback);

  /// Decides how [children] should be positioned.
  final InlineAlignmentDelegate delegate;

  @override
  RenderDelegatingInlineAlignedStack createRenderObject(BuildContext context) {
    return RenderDelegatingInlineAlignedStack(delegate);
  }

  @override
  void updateRenderObject(BuildContext context,
      covariant RenderDelegatingInlineAlignedStack renderObject) {
    renderObject.delegate = delegate;
  }
}

/// Renders multiple widgets in a
abstract class RenderInlineAlignedStack extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, InlineAlignedParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, InlineAlignedParentData>,
        DebugOverflowIndicatorMixin,
        MarkerCollectorMixin {
  @override
  void setupParentData(covariant RenderObject child) {
    if (child.parentData is! InlineAlignedParentData) {
      child.parentData = InlineAlignedParentData();
    }
  }

  @override
  void performLayout() {
    size = constraints.constrain(layoutChildren(
        layoutChild: ChildLayoutHelper.layoutChild, constraints: constraints));
  }

  /// Lays out the children and returns the Size of the smallest box containing
  /// all the children.
  Size layoutChildren(
      {required ChildLayouter layoutChild,
      required BoxConstraints constraints});

  @override
  void paint(PaintingContext context, Offset offset) {
    defaultPaint(context, offset);
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    return defaultHitTestChildren(result, position: position);
  }
}

/// A [RenderInlineAlignedStack] that uses a [InlineAlignmentDelegate] to
/// layout the children.
class RenderDelegatingInlineAlignedStack extends RenderInlineAlignedStack {
  RenderDelegatingInlineAlignedStack(this._delegate);

  InlineAlignmentDelegate get delegate => _delegate;
  InlineAlignmentDelegate _delegate;
  set delegate(InlineAlignmentDelegate delegate) {
    if (_delegate != delegate) {
      final needsLayout = delegate.runtimeType != _delegate.runtimeType ||
          delegate.shouldRelayout(_delegate);
      _delegate = delegate;
      if (needsLayout) {
        markNeedsLayout();
      }
    }
  }

  @override
  Size layoutChildren(
      {required ChildLayouter layoutChild,
      required BoxConstraints constraints}) {
    final markers = <RenderInlineMarker>[];
    registerOnMarkerRegisterCallback(markers.add, MarkerRegisterReason.layout);

    final sizes = <Size>[];
    var child = firstChild;
    while (child != null) {
      sizes.add(layoutChild(child, constraints.loosen()));
      child = (child.parentData as InlineAlignedParentData).nextSibling;
    }

    removeOnMarkerRegisterCallback(markers.add, MarkerRegisterReason.layout);
    final offsets = delegate.positionChildren(
        sizes,
        markers
            .map((c) => c.localToGlobal(Offset.zero, ancestor: this))
            .toList(),
        constraints);

    var width = constraints.minWidth;
    var height = constraints.minHeight;

    child = firstChild;
    while (child != null) {
      final parentData = (child.parentData as InlineAlignedParentData);
      parentData.offset = offsets.removeAt(0);
      width = max(width, parentData.offset.dx + child.size.width);
      height = max(height, parentData.offset.dy + child.size.height);

      child = parentData.nextSibling;
    }

    return Size(width, height);
  }
}

class InlineAlignedParentData extends ContainerBoxParentData<RenderBox> {}
