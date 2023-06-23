class FigmaFileJsonStyle {
  final String? key;
  final String? name;
  final String? styleType;
  final bool? remote;
  final String? description;

  FigmaFileJsonStyle({
    this.key,
    this.name,
    this.styleType,
    this.remote,
    this.description,
  });

  factory FigmaFileJsonStyle.fromJson(Map<String, dynamic> json) {
    return FigmaFileJsonStyle(
      key: json['key'],
      name: json['name'],
      styleType: json['styleType'],
      remote: json['remote'],
      description: json['description'],
    );
  }
}
