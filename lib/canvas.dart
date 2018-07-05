import 'body_element.dart';

class Canvas {
  String backgroundColor;
  List<String> bodyElementIds;
  List<BodyElement> bodyElements;
  bool isHidden = false;
  bool isPublished = false;
  String name;

  Canvas({
    this.backgroundColor,
    this.bodyElementIds,
    this.isHidden,
    this.isPublished,
    this.name,
  });

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
