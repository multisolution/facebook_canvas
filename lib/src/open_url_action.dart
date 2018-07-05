class OpenUrlAction {
  String url;

  OpenUrlAction(this.url);

  Map<String, dynamic> toMap() {
    return {'url': url};
  }
}
