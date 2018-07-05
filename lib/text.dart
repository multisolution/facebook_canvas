import 'src/body_element.dart';
import 'src/helpers.dart';
import 'src/rich_text.dart';
import 'src/text_alignment.dart';

class Text implements BodyElement {
  String type = 'canvas_text';

  String backgroundColor;
  double bottomPadding;
  String fontFamily;
  int fontSize;
  double lineHeight;
  String name;
  RichText richText;
  TextAlignment textAlignment;
  String textColor;
  double topPadding;

  Text({
    this.backgroundColor,
    this.bottomPadding,
    this.fontFamily,
    this.fontSize,
    this.lineHeight,
    this.name,
    this.richText,
    this.textAlignment = TextAlignment.center,
    this.textColor,
    this.topPadding,
  });

  Map<String, dynamic> toMap() {
    return {
      'background_color': backgroundColor,
      'bottom_padding': bottomPadding,
      'font_family': fontFamily,
      'font_size': fontSize,
      'line_height': lineHeight,
      'name': name,
      'rich_text': richText?.toMap(),
      'text_alignment':
          enumToString<TextAlignment>(textAlignment).toUpperCase(),
      'text_color': textColor,
      'top_padding': topPadding,
    };
  }
}
