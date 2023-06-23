import 'package:f2f/f2f.dart';

class FigmaFileComponents {
  final String? key;
  final String? name;
  final String? description;
  final bool? remote;
  final String? componentSetId;
  final List<String>? documentationLinks;

  FigmaFileComponents({
    this.key,
    this.name,
    this.description,
    this.remote,
    this.componentSetId,
    this.documentationLinks,
  });

  factory FigmaFileComponents.fromJson(Map<String, dynamic> json) {
    return FigmaFileComponents(
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

class FigmaFileComponentSets {
  final String? key;
  final String? name;
  final String? description;
  final bool? remote;

  FigmaFileComponentSets({
    this.key,
    this.name,
    this.description,
    this.remote,
  });

  factory FigmaFileComponentSets.fromJson(Map<String, dynamic> json) {
    return FigmaFileComponentSets(
      key: json['key'],
      name: json['name'],
      description: json['description'],
      remote: json['remote'],
    );
  }
}

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

class FigmaFileJson {
  final String? name;
  final String? lastModified;
  final String? thumbnailUrl;
  final String? version;
  final String? role;
  final String? editorType;
  final String? linkAccess;
  final int? schemaVersion;
  final Map<String, FigmaFileJsonStyle>? styles;
  final Map<String, FigmaFileComponentSets>? componentSets;
  final Map<String, FigmaFileComponents>? components;

  FigmaFileJson({
    this.name,
    this.lastModified,
    this.thumbnailUrl,
    this.version,
    this.role,
    this.editorType,
    this.linkAccess,
    this.schemaVersion,
    this.styles,
    this.componentSets,
    this.components,
  });

  factory FigmaFileJson.fromFile(String filePath) {
    return FigmaFileJson.fromJson(
      Map<String, dynamic>.from(
        jsonDecode(File(filePath).readAsStringSync()),
      ),
    );
  }

  factory FigmaFileJson.fromJson(Map<String, dynamic> json) {
    return FigmaFileJson(
      name: json['name'],
      lastModified: json['lastModified'],
      thumbnailUrl: json['thumbnailUrl'],
      version: json['version'],
      role: json['role'],
      editorType: json['editorType'],
      linkAccess: json['linkAccess'],
      schemaVersion: json['schemaVersion'],
      styles: json['styles'] != null
          ? (json['styles'] as Map<String, dynamic>).map(
              (key, value) => MapEntry(key, FigmaFileJsonStyle.fromJson(value)),
            )
          : null,
      componentSets: json['componentSets'] != null
          ? (json['componentSets'] as Map<String, dynamic>).map(
              (key, value) =>
                  MapEntry(key, FigmaFileComponentSets.fromJson(value)),
            )
          : null,
      components: json['components'] != null
          ? (json['components'] as Map<String, dynamic>).map(
              (key, value) =>
                  MapEntry(key, FigmaFileComponents.fromJson(value)),
            )
          : null,
    );
  }

  void printFile() {
    print('name: $name');
    print('lastModified: $lastModified');
    print('thumbnailUrl: $thumbnailUrl');
    print('version: $version');
    print('role: $role');
    print('editorType: $editorType');
    print('linkAccess: $linkAccess');
    print('schemaVersion: $schemaVersion');
    print('styles: $styles');
    print('componentSets: $componentSets');
    print('components: $components');
  }
}
