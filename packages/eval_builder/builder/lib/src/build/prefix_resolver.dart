import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart';
import 'package:eval_builder/src/utils/map_string.dart';

class PrefixResolver implements Allocator {
  final List<PrefixElement> _prefixes;
  final Map<({String url, String symbol}), String?> _cache = {};

  PrefixResolver(this._prefixes);

  @override
  String allocate(Reference reference) {
    var url = reference.url;
    if (url == null) {
      return reference.symbol ?? '';
    }

    var symbol = reference.symbol!;

    if (_cache.containsKey((url: url, symbol: symbol))) {
      return _cache[(url: url, symbol: symbol)]
              ?.map((s) => '$s.${reference.symbol}') ??
          reference.symbol!;
    }

    var id = int.tryParse(url.replaceAll('_library_with_element:', ''));

    for (var prefix
        in _prefixes.sorted((p0, p1) => p0.name.compareTo(p1.name))) {
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
              if ((element.id == id) ||
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

    _cache[(url: url, symbol: symbol)] = null;
    return symbol;
  }

  @override
  Iterable<Directive> get imports {
    return Iterable.empty();
  }
}

extension on LibraryElement {
  bool exports(String uri) {
    return exportedLibraries.any((l) => l.source.uri.toString() == uri) ||
        exportedLibraries.any(
          (l) => l.exportedLibraries.any((l) => l.exports(uri)),
        );
  }
}

extension<T> on Iterable<T> {
  Iterable<T> sorted([int Function(T, T)? compare]) {
    var list = toList();
    list.sort(compare);
    return list;
  }
}
