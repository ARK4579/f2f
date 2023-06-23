class FigmaFileComponentSet {
  final String? id;
  final String? key;
  final String? name;
  final String? description;
  final bool? remote;

  FigmaFileComponentSet({
    this.id,
    this.key,
    this.name,
    this.description,
    this.remote,
  });

  factory FigmaFileComponentSet.fromJson(String id, Map<String, dynamic> json) {
    return FigmaFileComponentSet(
      id: id,
      key: json['key'],
      name: json['name'],
      description: json['description'],
      remote: json['remote'],
    );
  }

  // to json
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'key': key,
      'name': name,
      'description': description,
      'remote': remote,
    };
  }
}
