import 'package:analyzer/dart/element/type.dart';
import 'package:eval_builder_annotations/annotations.dart';

typedef KnownWrapperMap = Map<DartType, ({String spec, String wrap})>;

class WrapperSettings {
  final bool bimodal;

  final DefaultParameterStrategy defaultParameterStrategy;

  final KnownWrapperMap knownWrappers;

  final String libIdentifier;

  final String name;

  const WrapperSettings(
      {required this.bimodal,
      required this.defaultParameterStrategy,
      required this.knownWrappers,
      required this.libIdentifier,
      required this.name});
}
