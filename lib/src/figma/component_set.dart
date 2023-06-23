class FigmaFileComponentSet {
  final String? key;
  final String? name;
  final String? description;
  final bool? remote;

  FigmaFileComponentSet({
    this.key,
    this.name,
    this.description,
    this.remote,
  });

  factory FigmaFileComponentSet.fromJson(Map<String, dynamic> json) {
    return FigmaFileComponentSet(
      key: json['key'],
      name: json['name'],
      description: json['description'],
      remote: json['remote'],
    );
  }
}
