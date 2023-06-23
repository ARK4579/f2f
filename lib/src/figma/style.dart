class FigmaFileStyle {
  final String? id;
  final String? key;
  final String? name;
  final String? styleType;
  final bool? remote;
  final String? description;

  FigmaFileStyle({
    this.id,
    this.key,
    this.name,
    this.styleType,
    this.remote,
    this.description,
  });

  factory FigmaFileStyle.fromJson(String id, Map<String, dynamic> json) {
    return FigmaFileStyle(
      id: id,
      key: json['key'],
      name: json['name'],
      styleType: json['styleType'],
      remote: json['remote'],
      description: json['description'],
    );
  }

  // to json
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'key': key,
      'name': name,
      'styleType': styleType,
      'remote': remote,
      'description': description,
    };
  }
}
