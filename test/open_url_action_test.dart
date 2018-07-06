import 'package:test/test.dart';

import '../lib/src/open_url_action.dart';

void main() {
  test('OpenUrlAction.canvas', () {
    final action = new OpenUrlAction.canvas('test');
    expect(action.url, equals('https://fb.com/canvas_doc/test'));
  });
}
