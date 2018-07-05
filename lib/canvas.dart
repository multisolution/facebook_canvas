class Canvas {
  String backgroundColor;
  List<String> bodyElementIds;
  bool isHidden = false;
  bool isPublished = false;
  String name;

  Map<String, dynamic> toMap() {
    return {
      'background_color': backgroundColor,
      'body_element_ids': bodyElementIds,
      'is_hidden': isHidden,
      'is_published': isPublished,
      'name': name,
    };
  }
}
