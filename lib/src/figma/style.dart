class FigmaFileStyle {
  final String? key;
  final String? name;
  final String? styleType;
  final bool? remote;
  final String? description;

  FigmaFileStyle({
    this.key,
    this.name,
    this.styleType,
    this.remote,
    this.description,
  });

  factory FigmaFileStyle.fromJson(Map<String, dynamic> json) {
    return FigmaFileStyle(
      key: json['key'],
      name: json['name'],
      styleType: json['styleType'],
      remote: json['remote'],
      description: json['description'],
    );
  }
}
