import 'package:test/test.dart';

import '../lib/src/helpers.dart';

enum EnumFixture { test }

void main() {
  test('enumToString', () {
    expect(enumToString<EnumFixture>(EnumFixture.test), equals('test'));
  });

  test('toConstantCase', () {
    expect(toConstantCase('fooBarBaz'), equals('FOO_BAR_BAZ'));
  });
}
