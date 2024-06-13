import 'dart:io';

import 'package:test/test.dart';
import 'package:path/path.dart';

import 'matches_golden.dart';

final testFileDirPath = 'test';

void main() {
  final filesForDeletion = <File>[];

  test('no string', () async {
    expect(await MatchesGoldenFile(File('test.golden.dart')).matchAsync(1234),
        'is no string');
  });
  test('file does not exist', () async {
    expect(
        await MatchesGoldenFile(File('does_not_exist'))
            .matchAsync('test input'),
        'can not be tested, since the golden file "does_not_exist" does not exist.');
  });
  test('create File', () async {
    var filename = 'matches_golden_test.temp.golden.txt';
    var file = File(join(testFileDirPath, filename));
    filesForDeletion.add(file);
    expect(await file.exists(), false,
        reason: '"$filename" does already exist.');

    expect('test content', MatchesGoldenFile(file, true));

    expect(await file.exists(), true, reason: '"$filename" was not created.');
  });
  test('matches', () async {
    expect(
        await MatchesGoldenFile(
                File(join(testFileDirPath, 'matches_golden_test.golden.txt')))
            .matchAsync('test content'),
        isNull);
  });

  test('does not match', () async {
    expect(
        await MatchesGoldenFile(
                File(join(testFileDirPath, 'matches_golden_test.golden.txt')))
            .matchAsync('test input'),
        '''is different.
Expected: test content
  Actual: test input
               ^
 Differ at offset 5''');
  });

  tearDownAll(() async {
    await Future.wait(filesForDeletion
        .map((e) async => await e.exists() ? e.delete() : null));
  });
}
