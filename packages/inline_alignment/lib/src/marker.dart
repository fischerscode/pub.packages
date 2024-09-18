part of 'stack.dart';

/// An [InlineMarker] tracks an inline position in a paragraph.
/// By injecting an [InlineMarkerWidget] that is backed by a
/// [RenderInlineMarker] in the render tree.
class InlineMarker extends WidgetSpan {
  const InlineMarker({super.alignment})
      : super(
            child: const InlineMarkerWidget(),
            baseline: TextBaseline.alphabetic);
}

/// The widget used by an [InlineMarker] to track positions in a
/// paragraph.
class InlineMarkerWidget extends LeafRenderObjectWidget {
  const InlineMarkerWidget({super.key});

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderInlineMarker();
  }
}

/// Reports the position of a [InlineMarker] to a [MarkerCollector] in the
/// render tree.
class RenderInlineMarker extends RenderBox {
  @override
  void performLayout() {
    registerMarker(MarkerRegisterReason.layout);
    size = constraints.constrain(Size.zero);
  }

  /// Registers this marker at the closest parent [MarkerCollector].
  void registerMarker(MarkerRegisterReason reason) {
    var parent = this.parent;
    while (parent != null) {
      if (parent is MarkerCollector) {
        (parent as MarkerCollector).registerMarker(this, reason);
        break;
      }
      parent = parent.parent;
    }
  }

  @override
  Size computeDryLayout(covariant BoxConstraints constraints) {
    registerMarker(MarkerRegisterReason.dryLayout);
    return constraints.constrain(Size.zero);
  }
}

/// Collects [InlineMarker] in the render tree.
///
/// See also:
///   - [MarkerCollectorMixin], a mixin that uses registered [MarkerCallback]s
///     handle registering [InlineMarker].
abstract class MarkerCollector {
  /// Register this [marker].
  void registerMarker(RenderInlineMarker marker, MarkerRegisterReason reason);
}

typedef MarkerCallback = Function(RenderInlineMarker);

enum MarkerRegisterReason {
  layout,
  dryLayout,
}

/// A Mixin that implements [MarkerCollector] by piping registering markers to
/// registered callbacks.
mixin MarkerCollectorMixin on RenderObject implements MarkerCollector {
  final Map<MarkerRegisterReason, List<MarkerCallback>> _markerCallbacks = {};

  /// Register a new [MarkerCallback] that is called when ever a marker
  /// registers using [registerMarker].
  void registerOnMarkerRegisterCallback(
      MarkerCallback callback, MarkerRegisterReason reason) {
    (_markerCallbacks[reason] ??= []).add(callback);
  }

  /// Remove a [MarkerCallback] that was added using
  /// [registerOnMarkerRegisterCallback].
  void removeOnMarkerRegisterCallback(
      MarkerCallback callback, MarkerRegisterReason reason) {
    final removed = _markerCallbacks[reason]?.remove(callback) ?? false;
    assert(
        removed,
        'Tried to remove a MarkerCallback that has not been registered for '
        '$reason.');
  }

  @override
  @pragma('vm:notify-debugger-on-exception')
  void registerMarker(RenderInlineMarker marker, MarkerRegisterReason reason) {
    for (var callback in _markerCallbacks[reason] ?? const <MarkerCallback>[]) {
      try {
        callback(marker);
      } catch (e, s) {
        FlutterError.reportError(FlutterErrorDetails(
          exception: e,
          stack: s,
          library: 'inline_alignment',
          context: ErrorDescription('while registering a ${marker.runtimeType} '
              'at $runtimeType for $reason.'),
        ));
      }
    }
  }

  @override
  void dispose() {
    _markerCallbacks.clear();
    super.dispose();
  }
}
