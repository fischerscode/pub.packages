import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:path/path.dart';

/// Obtain all declared [Element]s in [file].
///
/// If [path] is null, assume that [file] is in the test/ directory.
/// If [path] is not null, those parts will be appended to test/.
Future<ResolvedLibraryResult?> resolveLibraryFromFile<T extends Element>(
    String file,
    [List<String>? path]) async {
  final filePath = joinAll(
      [...split(Directory.current.absolute.path), 'test', ...?path, file]);

  var collection =
      AnalysisContextCollection(includedPaths: [Directory.current.path]);

  var result = await collection
      .contextFor(filePath)
      .currentSession
      .getResolvedLibrary(filePath);

  if (result is ResolvedLibraryResult) {
    return result;
  } else {
    return null;
  }
}
