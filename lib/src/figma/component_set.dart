class FigmaFileJsonComponentSet {
  final String? key;
  final String? name;
  final String? description;
  final bool? remote;

  FigmaFileJsonComponentSet({
    this.key,
    this.name,
    this.description,
    this.remote,
  });

  factory FigmaFileJsonComponentSet.fromJson(Map<String, dynamic> json) {
    return FigmaFileJsonComponentSet(
      key: json['key'],
      name: json['name'],
      description: json['description'],
      remote: json['remote'],
    );
  }
}
