import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart' as ast;
import 'package:code_builder/code_builder.dart';
import 'package:eval_builder/src/utils/map_string.dart';

class PrefixAllocator implements Allocator {
  final Map<String, String?> _prefixes;

  PrefixAllocator(this._prefixes);

  factory PrefixAllocator.from(String sourceCode, Uri baseDir) {
    Map<String, String?> prefixes = {};

    final parsed = parseString(content: sourceCode);

    for (var directive in parsed.unit.directives) {
      if (directive is ast.ImportDirective) {
        var uri = directive.uri.stringValue;

        final prefix = directive.prefix?.name;

        if (uri != null && prefix != null) {
          if (!uri.contains(':')) {
            uri = baseDir
                .replace(
                    path: '${baseDir.path}/$uri'.replaceAll(RegExp(r'/+'), '/'))
                .normalizePath()
                .toString();
          }
          prefixes[uri] = prefix;
        }
      }
    }

    return PrefixAllocator(prefixes);
  }

  @override
  String allocate(Reference reference) {
    var result = reference.url?.map((u) =>
            // ignore: unnecessary_null_aware_assignments
            (_prefixes[u] ??= null)?.map((p) => '$p.${reference.symbol}')) ??
        reference.symbol ??
        '';
    return result;
  }

  @override
  Iterable<Directive> get imports {
    return Iterable.empty();
    // return _prefixes.entries.map((entry) {
    //   return Directive.import(entry.key, as: entry.value);
    // });
  }
}
