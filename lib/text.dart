import 'rich_text.dart';
import 'body_element.dart';

enum TextAlignment {
  left,
  center,
  right,
}

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
      'text_alignment': textAlignment
          .toString()
          .substring('TextAlignment.'.length)
          .toUpperCase(),
      'text_color': textColor,
      'top_padding': topPadding,
    };
  }
}
