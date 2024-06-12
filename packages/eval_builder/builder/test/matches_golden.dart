import 'dart:io';

import 'package:path/path.dart' show join, joinAll, split;
import 'package:test/test.dart';
// ignore: depend_on_referenced_packages
import 'package:matcher/src/expect/async_matcher.dart';

class MatchesGoldenFile extends AsyncMatcher {
  final File file;
  final bool updateGolden;

  const MatchesGoldenFile(this.file, [this.updateGolden = false]);

  @override
  Description describe(Description description) {
    return description
      ..add(
          'a String that matches the content of the golden file "${file.path}"');
  }

  @override
  Future<String?> matchAsync(item) async {
    if (item is! String) {
      return 'is no string';
    }
    if (updateGolden) {
      print('Note: Updating golden file $file.');
      await file.writeAsString(item);
      return null;
    }

    if (!await file.exists()) {
      return 'can not be tested, since the golden file "${file.path}" does not exist.';
    } else {
      var golden = await file.readAsString();

      if (equals(golden).matches(item, {})) {
        return null;
      } else {
        return equals(golden)
            .describeMismatch(item, StringDescription(), {}, false)
            .toString();
      }
    }
  }
}

/// Matches a [String] against a golden [file].
///
/// If [path] is null, assume that [file] is in the test/ directory.
/// If [path] is not null, those parts will be appended to test/.
Matcher matchesGolden(String file, [List<String>? path]) {
  final updateGolden =
      (bool.tryParse(Platform.environment['TEST_UPDATE_GOLDENS'] ?? '') ??
          false);
  return MatchesGoldenFile(
      File(joinAll(
          [...split(Directory.current.absolute.path), 'test', ...?path, file])),
      updateGolden);
}
