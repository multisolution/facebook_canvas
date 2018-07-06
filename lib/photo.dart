import 'src/body_element.dart';

import 'src/open_url_action.dart';
import 'src/helpers.dart';

class ProductTag {
  String productId;
  List<double> coordinates;

  Map<String, dynamic> toMap() {
    return {
      'product_id': productId,
      'coordinates': coordinates,
    };
  }
}

enum Style { fitToWidth, fitToWidthExpandable, fitToHeight }

class Photo implements BodyElement {
  String type = 'canvas_photo';

  double bottomPadding;
  String deepLink;
  bool hideProductPrices;
  String name;
  OpenUrlAction openUrlAction;
  String photoId;
  List<ProductTag> productTags;
  Style style;
  double topPadding;

  Photo({
    this.bottomPadding,
    this.deepLink,
    this.hideProductPrices,
    this.name,
    this.openUrlAction,
    this.photoId,
    this.productTags,
    this.style = Style.fitToWidth,
    this.topPadding,
  });

  Map<String, dynamic> toMap() {
    return {
      'bottom_padding': bottomPadding,
      'deep_link': deepLink,
      'hide_product_prices': hideProductPrices,
      'name': name,
      'open_url_action': openUrlAction?.toMap(),
      'photo_id': photoId,
      'product_tags': productTags?.map((productTag) => productTag.toMap()),
      'style': toConstantCase(enumToString<Style>(style)),
      'top_padding': topPadding,
    };
  }
}
