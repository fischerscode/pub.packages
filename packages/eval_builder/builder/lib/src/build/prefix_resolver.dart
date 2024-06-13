import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:code_builder/code_builder.dart';
import 'package:eval_builder/src/utils/map_string.dart';

class PrefixResolver implements Allocator {
  final List<PrefixElement> _prefixes;
  final Map<String, String?> _cache = {};

  PrefixResolver(this._prefixes);

  @override
  String allocate(Reference reference) {
    var url = reference.url;
    if (url == null) {
      return reference.symbol ?? '';
    }

    var symbol = reference.symbol!;

    if (_cache.containsKey(url)) {
      return _cache[url]?.map((s) => '$s.${reference.symbol}') ??
          reference.symbol!;
    }

    if (symbol == r'$Value') {
      print(url);
    }

    for (var prefix in _prefixes) {
      for (var import in prefix.imports) {
        if (import.combinators.every(
          (combinator) => switch (combinator) {
            HideElementCombinator() => !combinator.hiddenNames.contains(symbol),
            ShowElementCombinator() => combinator.shownNames.contains(symbol),
            _ => true,
          },
        )) {
          final importElement = import.importedLibrary;
          if (importElement != null) {
            var element = importElement.exportNamespace.get(symbol);
            if (element != null) {
              if ((reference is IdReference && element.id == reference.id) ||
                  importElement.source.uri.toString() == url ||
                  importElement.exports(url)) {
                _cache[url] == prefix.name;
                return '${prefix.name}.$symbol';
              }
            }
          }
        }
      }
    }

    _cache[url] = null;
    return symbol;
  }

  @override
  Iterable<Directive> get imports {
    return Iterable.empty();
  }
}

class IdReference extends Reference {
  const IdReference._(String super.symbol, this.id);

  IdReference.fromDartType(DartType type)
      : this._(type.element!.name!, type.element!.id);

  @override
  String get symbol => super.symbol!;

  final int id;

  @override
  String get url => 'library_with_element:$id';
}

extension on LibraryElement {
  bool exports(String uri) {
    return exportedLibraries.any((l) => l.source.uri.toString() == uri) ||
        exportedLibraries.any(
          (l) => l.exportedLibraries.any((l) => l.exports(uri)),
        );
  }
}
