class FigmaFileComponent {
  final String? key;
  final String? name;
  final String? description;
  final bool? remote;
  final String? componentSetId;
  final List<String>? documentationLinks;

  FigmaFileComponent({
    this.key,
    this.name,
    this.description,
    this.remote,
    this.componentSetId,
    this.documentationLinks,
  });

  factory FigmaFileComponent.fromJson(Map<String, dynamic> json) {
    return FigmaFileComponent(
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
}
