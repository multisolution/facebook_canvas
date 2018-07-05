import 'src/body_element.dart';
import 'src/helpers.dart';
import 'src/rich_text.dart';
import 'src/text_alignment.dart';

enum ButtonStyle {
  outline,
  filled,
}

class OpenUrlAction {
  String url;

  OpenUrlAction(this.url);

  Map<String, dynamic> toMap() {
    return {'url': url};
  }
}

class Button implements BodyElement {
  String type = 'canvas_button';

  String backgroundColor;
  double bottomPadding;
  String buttonColor;
  ButtonStyle buttonStyle;
  String deepLink;
  String fontFamily;
  int fontSize;
  double lineHeight;
  String name;
  OpenUrlAction openUrlAction;
  RichText richText;
  TextAlignment textAlignment;
  String textColor;
  double topPadding;

  Button({
    this.backgroundColor,
    this.bottomPadding,
    this.buttonColor,
    this.buttonStyle = ButtonStyle.filled,
    this.deepLink,
    this.fontFamily,
    this.fontSize,
    this.lineHeight,
    this.name,
    this.openUrlAction,
    this.richText,
    this.textAlignment = TextAlignment.center,
    this.textColor,
    this.topPadding,
  });

  Map<String, dynamic> toMap() {
    return {
      'background_color': backgroundColor,
      'bottom_padding': bottomPadding,
      'button_color': buttonColor,
      'button_style':
          'BUTTON_${enumToString<ButtonStyle>(buttonStyle).toUpperCase()}',
      'deep_link': deepLink,
      'font_family': fontFamily,
      'font_size': fontSize,
      'line_height': lineHeight,
      'name': name,
      'open_url_action': openUrlAction?.toMap(),
      'rich_text': richText?.toMap(),
      'text_alignment':
          enumToString<TextAlignment>(textAlignment).toUpperCase(),
      'text_color': textColor,
      'top_padding': topPadding,
    };
  }
}
