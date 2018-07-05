import 'inline_style.dart';

class RichText {
  List<InlineStyle> inlineStyles;
  String plainText;

  RichText(this.plainText, [this.inlineStyles = const []]);

  Map<String, dynamic> toMap() {
    return {
      'inline_styles':
          inlineStyles.map((inlineStyle) => inlineStyle?.toMap()).toList(),
      'plain_text': plainText,
    };
  }
}
