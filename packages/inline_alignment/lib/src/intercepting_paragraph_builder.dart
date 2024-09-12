import 'dart:ui';

/// A [ParagraphBuilder] that intercepts the [Paragraph] during [build] and
/// exposes it as [paragraph].
class InterceptingParagraphBuilder implements ParagraphBuilder {
  InterceptingParagraphBuilder._(this._parent);

  factory InterceptingParagraphBuilder(ParagraphStyle style) {
    return InterceptingParagraphBuilder._(ParagraphBuilder(style));
  }

  final ParagraphBuilder _parent;
  Paragraph? _paragraph;

  /// The intercepted [Paragraph], or null if [build] was not yet called.
  Paragraph? get paragraph => _paragraph;

  @override
  void addPlaceholder(
      double width, double height, PlaceholderAlignment alignment,
      {double scale = 1.0, double? baselineOffset, TextBaseline? baseline}) {
    _parent.addPlaceholder(width, height, alignment,
        scale: scale, baselineOffset: baselineOffset, baseline: baseline);
  }

  @override
  void addText(String text) {
    _parent.addText(text);
  }

  @override
  Paragraph build() {
    final paragraph = _parent.build();
    _paragraph = paragraph;
    return paragraph;
  }

  @override
  int get placeholderCount => _parent.placeholderCount;

  @override
  List<double> get placeholderScales => _parent.placeholderScales;

  @override
  void pop() {
    _parent.pop();
  }

  @override
  void pushStyle(TextStyle style) {
    _parent.pushStyle(style);
  }
}
