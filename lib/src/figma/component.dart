class FigmaFileComponent {
  final String? id;
  final String? key;
  final String? name;
  final String? description;
  final bool? remote;
  final String? componentSetId;
  final List<String>? documentationLinks;

  FigmaFileComponent({
    this.id,
    this.key,
    this.name,
    this.description,
    this.remote,
    this.componentSetId,
    this.documentationLinks,
  });

  factory FigmaFileComponent.fromJson(String id, Map<String, dynamic> json) {
    return FigmaFileComponent(
      id: id,
      key: json['key'],
      name: json['name'],
      description: json['description'],
      remote: json['remote'],
      componentSetId: json['componentSetId'],
      documentationLinks: json['documentationLinks'] != null
          ? List<String>.from(json['documentationLinks'])
          : null,
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
      'componentSetId': componentSetId,
      'documentationLinks': documentationLinks,
    };
  }
}
