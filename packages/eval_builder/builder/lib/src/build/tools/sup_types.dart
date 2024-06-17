import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:code_builder/code_builder.dart' as code;
import 'package:eval_builder/src/build/tools/dart_type_to_code.dart';

import '../settings.dart';
import '../well_known_type_references.dart';
import 'discovery.dart';

extension ReferableSupTypeWrapperDiscovery on (
  InterfaceType,
  WrapperDiscovery
) {
  /// Create a [WellKnownTypeReferences.bridgeTypeRef]
  code.Expression get ref {
    return WellKnownTypeReferences.bridgeTypeRef.call(
        [$2.spec, code.literalList($1.typeArguments.map((e) => e.refer()))]);
  }
}

extension DiscoverSupTypesExtension on InterfaceElement {
  List<(InterfaceType, WrapperDiscovery)> discoverSupWrappers(
      Iterable<InterfaceType> Function(InterfaceElement) sup,
      KnownWrapperMap knownWrappers) {
    var results = <(InterfaceType, WrapperDiscovery)>[];
    var currentLayer = sup(this);

    while (currentLayer.isNotEmpty) {
      var nextLayer = <InterfaceType>[];
      for (var current in currentLayer) {
        var discovery =
            WrapperDiscovery.discover(current.element, knownWrappers, current);
        if (discovery != null) {
          results.add((current, discovery));
        } else {
          nextLayer.addAll(sup(current.element));
        }
      }
      currentLayer = nextLayer;
    }

    return results;
  }

  List<InterfaceType> discoverSupTillWrapper(
      Iterable<InterfaceType> Function(InterfaceElement) sup,
      KnownWrapperMap knownWrappers) {
    var results = <InterfaceType>[];
    var currentLayer = sup(this);

    while (currentLayer.isNotEmpty) {
      var nextLayer = <InterfaceType>[];
      for (var current in currentLayer) {
        if (WrapperDiscovery.discover(
                current.element, knownWrappers, current) ==
            null) {
          results.add(current);
          nextLayer.addAll(sup(current.element));
        }
      }
      currentLayer = nextLayer;
    }

    return results;
  }
}
