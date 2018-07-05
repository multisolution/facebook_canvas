class InlineStyle {
  int length;
  int offset;
  String style;

  InlineStyle({
    this.length,
    this.offset,
    this.style,
  });

  Map<String, dynamic> toMap() {
    return {
      'length': length,
      'offset': offset,
      'style': style,
    };
  }
}
