// Copyright (c) 2023, Maximilian Fischer
// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:wrapfit/src/rendering.dart';

/// A widget that displays its children in multiple horizontal or vertical runs.
///
/// A [Wrap] lays out each child and attempts to place the child adjacent to the
/// previous child in the main axis, given by [direction], leaving [spacing]
/// space in between. If there is not enough space to fit the child, [Wrap]
/// creates a new _run_ adjacent to the existing children in the cross axis.
///
/// After all the children have been allocated to runs, the children within the
/// runs are positioned according to the [alignment] in the main axis and
/// according to the [crossAxisAlignment] in the cross axis.
///
/// The runs themselves are then positioned in the cross axis according to the
/// [runSpacing] and [runAlignment].
///
/// {@youtube 560 315 https://www.youtube.com/watch?v=z5iw2SeFx2M}
///
/// {@tool snippet}
///
/// This example renders some [Chip]s representing four contacts in a [Wrap] so
/// that they flow across lines as necessary.
///
/// ```dart
/// Wrap(
///   spacing: 8.0, // gap between adjacent chips
///   runSpacing: 4.0, // gap between lines
///   children: <Widget>[
///     Chip(
///       avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('AH')),
///       label: const Text('Hamilton'),
///     ),
///     Chip(
///       avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('ML')),
///       label: const Text('Lafayette'),
///     ),
///     Chip(
///       avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('HM')),
///       label: const Text('Mulligan'),
///     ),
///     Chip(
///       avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('JL')),
///       label: const Text('Laurens'),
///     ),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool dartpad}
/// This example shows a typical application of the [Wrap] widget. With user
/// inputs and a [TextField] that prefers to be in the current run.
///
/// ** See code in examples/api/lib/widgets/wrap/wrap.0.dart **
/// {@end-tool}
///
/// See also:
///
///  * [Wrapped], to indicate children that should be placed in the current
///    run, if their minimal intrinsic size in the [Wrap.direction] allows it.
///  * [Row], which places children in one line, and gives control over their
///    alignment and spacing.
///  * The [catalog of layout widgets](https://flutter.dev/widgets/layout/).
class Wrap2 extends MultiChildRenderObjectWidget {
  /// Creates a wrap layout.
  ///
  /// By default, the wrap layout is horizontal and both the children and the
  /// runs are aligned to the start.
  ///
  /// The [textDirection] argument defaults to the ambient [Directionality], if
  /// any. If there is no ambient directionality, and a text direction is going
  /// to be necessary to decide which direction to lay the children in or to
  /// disambiguate `start` or `end` values for the main or cross axis
  /// directions, the [textDirection] must not be null.
  const Wrap2({
    super.key,
    this.direction = Axis.horizontal,
    this.alignment = WrapAlignment.start,
    this.spacing = 0.0,
    this.runAlignment = WrapAlignment.start,
    this.runSpacing = 0.0,
    this.crossAxisAlignment = WrapCrossAlignment.start,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.clipBehavior = Clip.none,
    super.children,
  });

  /// The direction to use as the main axis.
  ///
  /// For example, if [direction] is [Axis.horizontal], the default, the
  /// children are placed adjacent to one another in a horizontal run until the
  /// available horizontal space is consumed, at which point a subsequent
  /// children are placed in a new run vertically adjacent to the previous run.
  final Axis direction;

  /// How the children within a run should be placed in the main axis.
  ///
  /// For example, if [alignment] is [WrapAlignment.center], the children in
  /// each run are grouped together in the center of their run in the main axis.
  ///
  /// Defaults to [WrapAlignment.start].
  ///
  /// See also:
  ///
  ///  * [runAlignment], which controls how the runs are placed relative to each
  ///    other in the cross axis.
  ///  * [crossAxisAlignment], which controls how the children within each run
  ///    are placed relative to each other in the cross axis.
  final WrapAlignment alignment;

  /// How much space to place between children in a run in the main axis.
  ///
  /// For example, if [spacing] is 10.0, the children will be spaced at least
  /// 10.0 logical pixels apart in the main axis.
  ///
  /// If there is additional free space in a run (e.g., because the wrap has a
  /// minimum size that is not filled or because some runs are longer than
  /// others), the additional free space will be allocated according to the
  /// [alignment].
  ///
  /// Defaults to 0.0.
  final double spacing;

  /// How the runs themselves should be placed in the cross axis.
  ///
  /// For example, if [runAlignment] is [WrapAlignment.center], the runs are
  /// grouped together in the center of the overall [Wrap] in the cross axis.
  ///
  /// Defaults to [WrapAlignment.start].
  ///
  /// See also:
  ///
  ///  * [alignment], which controls how the children within each run are placed
  ///    relative to each other in the main axis.
  ///  * [crossAxisAlignment], which controls how the children within each run
  ///    are placed relative to each other in the cross axis.
  final WrapAlignment runAlignment;

  /// How much space to place between the runs themselves in the cross axis.
  ///
  /// For example, if [runSpacing] is 10.0, the runs will be spaced at least
  /// 10.0 logical pixels apart in the cross axis.
  ///
  /// If there is additional free space in the overall [Wrap] (e.g., because
  /// the wrap has a minimum size that is not filled), the additional free space
  /// will be allocated according to the [runAlignment].
  ///
  /// Defaults to 0.0.
  final double runSpacing;

  /// How the children within a run should be aligned relative to each other in
  /// the cross axis.
  ///
  /// For example, if this is set to [WrapCrossAlignment.end], and the
  /// [direction] is [Axis.horizontal], then the children within each
  /// run will have their bottom edges aligned to the bottom edge of the run.
  ///
  /// Defaults to [WrapCrossAlignment.start].
  ///
  /// See also:
  ///
  ///  * [alignment], which controls how the children within each run are placed
  ///    relative to each other in the main axis.
  ///  * [runAlignment], which controls how the runs are placed relative to each
  ///    other in the cross axis.
  final WrapCrossAlignment crossAxisAlignment;

  /// Determines the order to lay children out horizontally and how to interpret
  /// `start` and `end` in the horizontal direction.
  ///
  /// Defaults to the ambient [Directionality].
  ///
  /// If the [direction] is [Axis.horizontal], this controls order in which the
  /// children are positioned (left-to-right or right-to-left), and the meaning
  /// of the [alignment] property's [WrapAlignment.start] and
  /// [WrapAlignment.end] values.
  ///
  /// If the [direction] is [Axis.horizontal], and either the
  /// [alignment] is either [WrapAlignment.start] or [WrapAlignment.end], or
  /// there's more than one child, then the [textDirection] (or the ambient
  /// [Directionality]) must not be null.
  ///
  /// If the [direction] is [Axis.vertical], this controls the order in which
  /// runs are positioned, the meaning of the [runAlignment] property's
  /// [WrapAlignment.start] and [WrapAlignment.end] values, as well as the
  /// [crossAxisAlignment] property's [WrapCrossAlignment.start] and
  /// [WrapCrossAlignment.end] values.
  ///
  /// If the [direction] is [Axis.vertical], and either the
  /// [runAlignment] is either [WrapAlignment.start] or [WrapAlignment.end], the
  /// [crossAxisAlignment] is either [WrapCrossAlignment.start] or
  /// [WrapCrossAlignment.end], or there's more than one child, then the
  /// [textDirection] (or the ambient [Directionality]) must not be null.
  final TextDirection? textDirection;

  /// Determines the order to lay children out vertically and how to interpret
  /// `start` and `end` in the vertical direction.
  ///
  /// If the [direction] is [Axis.vertical], this controls which order children
  /// are painted in (down or up), the meaning of the [alignment] property's
  /// [WrapAlignment.start] and [WrapAlignment.end] values.
  ///
  /// If the [direction] is [Axis.vertical], and either the [alignment]
  /// is either [WrapAlignment.start] or [WrapAlignment.end], or there's
  /// more than one child, then the [verticalDirection] must not be null.
  ///
  /// If the [direction] is [Axis.horizontal], this controls the order in which
  /// runs are positioned, the meaning of the [runAlignment] property's
  /// [WrapAlignment.start] and [WrapAlignment.end] values, as well as the
  /// [crossAxisAlignment] property's [WrapCrossAlignment.start] and
  /// [WrapCrossAlignment.end] values.
  ///
  /// If the [direction] is [Axis.horizontal], and either the
  /// [runAlignment] is either [WrapAlignment.start] or [WrapAlignment.end], the
  /// [crossAxisAlignment] is either [WrapCrossAlignment.start] or
  /// [WrapCrossAlignment.end], or there's more than one child, then the
  /// [verticalDirection] must not be null.
  final VerticalDirection verticalDirection;

  /// {@macro flutter.material.Material.clipBehavior}
  ///
  /// Defaults to [Clip.none].
  final Clip clipBehavior;

  @override
  RenderWrap2 createRenderObject(BuildContext context) {
    return RenderWrap2(
      direction: direction,
      alignment: alignment,
      spacing: spacing,
      runAlignment: runAlignment,
      runSpacing: runSpacing,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection ?? Directionality.maybeOf(context),
      verticalDirection: verticalDirection,
      clipBehavior: clipBehavior,
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderWrap2 renderObject) {
    renderObject
      ..direction = direction
      ..alignment = alignment
      ..spacing = spacing
      ..runAlignment = runAlignment
      ..runSpacing = runSpacing
      ..crossAxisAlignment = crossAxisAlignment
      ..textDirection = textDirection ?? Directionality.maybeOf(context)
      ..verticalDirection = verticalDirection
      ..clipBehavior = clipBehavior;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<Axis>('direction', direction));
    properties.add(EnumProperty<WrapAlignment>('alignment', alignment));
    properties.add(DoubleProperty('spacing', spacing));
    properties.add(EnumProperty<WrapAlignment>('runAlignment', runAlignment));
    properties.add(DoubleProperty('runSpacing', runSpacing));
    properties.add(EnumProperty<WrapCrossAlignment>(
        'crossAxisAlignment', crossAxisAlignment));
    properties.add(EnumProperty<TextDirection>('textDirection', textDirection,
        defaultValue: null));
    properties.add(EnumProperty<VerticalDirection>(
        'verticalDirection', verticalDirection,
        defaultValue: VerticalDirection.down));
  }
}

/// A widget that controls how a child of a [Wrap] is layed out.
///
/// Using a [Wrapped] widget gives a child of a [Wrap] the flexibility to
/// either layout in the current run or layout in the next run, depending on the
/// child's minimal intrinsic size ([RenderBox.getMinIntrinsicWidth] or
/// [RenderBox.getMinIntrinsicHeight] depending on the [Wrap.direction]).
///
/// A [Wrapped] widget must be a descendant of a [Wrap], and the path from the
/// [Wrapped] widget to its enclosing [Wrap] must contain only
/// [StatelessWidget]s or [StatefulWidget]s (not other kinds of widgets, like
/// [RenderObjectWidget]s).
///
/// See also:
///  * [Wrap], which is the typical parent of [Wrapped]
///  * The [catalog of layout widgets](https://flutter.dev/widgets/layout/).
class Wrapped extends ParentDataWidget<Wrap2ParentData> {
  /// Creates a widget that controlls how a child of a [Wrap2] is layed out.
  const Wrapped({
    super.key,
    this.fit = WrapFit.runTight,
    required super.child,
  });

  /// How a wrapped child is inscribed into the available space of the current
  /// or an empty run.
  final WrapFit fit;

  @override
  void applyParentData(RenderObject renderObject) {
    assert(renderObject.parentData is Wrap2ParentData);
    final Wrap2ParentData parentData =
        renderObject.parentData! as Wrap2ParentData;
    if (parentData.fit != fit) {
      parentData.fit = fit;
      final RenderObject? targetParent = renderObject.parent;
      if (targetParent is RenderObject) {
        targetParent.markNeedsLayout();
      }
    }
  }

  @override
  Type get debugTypicalAncestorWidgetClass => Wrap2;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<WrapFit>('fit', fit));
  }
}
