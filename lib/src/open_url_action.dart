class OpenUrlAction {
  String url;

  OpenUrlAction(this.url);

  OpenUrlAction.canvas(String canvasId)
      : url = 'https://fb.com/canvas_doc/$canvasId';

  Map<String, dynamic> toMap() {
    return {'url': url};
  }
}
