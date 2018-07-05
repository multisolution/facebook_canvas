import 'package:test/test.dart';

import 'package:facebook_canvas/text.dart';

void main() {
  test('.toMap()', () {
    final text = new Text();
    text.textAlignment = TextAlignment.center;

    final map = text.toMap();

    expect(map['text_alignment'], equals('CENTER'));
  });
}
