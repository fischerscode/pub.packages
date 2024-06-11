import 'dart:io';

import 'package:path/path.dart' show join;
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

    if (!await file.exists()) {
      if (updateGolden) {
        await file.writeAsString(item);
        return null;
      } else {
        return 'can not be tested, since the golden file "${file.path}" does not exist.';
      }
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

Matcher matchesGolden(String path, [String? pathBaseDirectory]) =>
    MatchesGoldenFile(
        File(pathBaseDirectory != null ? join(pathBaseDirectory, path) : path),
        (bool.tryParse(Platform.environment['TEST_UPDATE_GOLDENS'] ?? '') ??
            false));
