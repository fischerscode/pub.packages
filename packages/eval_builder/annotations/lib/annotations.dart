class Wrapper {
  /// The name of the generated class.
  final String? name;

  /// Wether the wrapper should be [bimodal].
  final bool bimodal;

  /// The identifier of the library the virtual class should be a part of.
  ///
  /// (e.g. 'package:myPackage/file.dart')
  final String? libIdentifier;

  /// Maps a [Type] to the [Type] of the wrapper that should be used, to
  /// wrap elements of this [Type].
  ///
  /// @[Wrapper] annotated [Type]s don't have to be added to this, since they
  /// are discoverd automatically. [knownWrappers] takes priority over auto
  /// discovery.
  final Map<Type, Type> knownWrappers;

  /// The strategy for dealing with default parameters.
  /// Defaults to [DefaultParameterStrategy.copyCode].
  final DefaultParameterStrategy? defaultParameterStrategy;

  const Wrapper(
      {this.name,
      this.bimodal = true,
      this.libIdentifier,
      this.knownWrappers = const {},
      this.defaultParameterStrategy});
}

/// Different strategies for handling default parameters.
enum DefaultParameterStrategy {
  /// Copy the code from the definition.
  /// This might not work when using
  copyCode,
}
