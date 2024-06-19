import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:eval_builder_annotations/annotations.dart';

import 'tools/discovery.dart';

typedef KnownWrapperMap = Map<DartType,
    ({({String library, String name}) spec, ExecutableElement wrap})>;

class WrapperSettings {
  final bool bimodal;

  final DefaultParameterStrategy defaultParameterStrategy;

  final WrapperDiscoverer discoverer;

  final String libIdentifier;

  final String name;

  const WrapperSettings(
      {required this.bimodal,
      required this.defaultParameterStrategy,
      required this.discoverer,
      required this.libIdentifier,
      required this.name});
}
