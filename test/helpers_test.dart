import 'package:test/test.dart';

import '../lib/src/helpers.dart';

enum EnumFixture { test }

void main() {
  test('enumToString', () {
    expect(enumToString<EnumFixture>(EnumFixture.test), equals('test'));
  });
}
