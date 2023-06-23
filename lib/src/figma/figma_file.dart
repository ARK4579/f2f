import 'package:f2f/f2f.dart';

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
  final Map<String, FigmaFileJsonComponentSet>? componentSets;
  final Map<String, FigmaFileJsonComponent>? components;

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
                  MapEntry(key, FigmaFileJsonComponentSet.fromJson(value)),
            )
          : null,
      components: json['components'] != null
          ? (json['components'] as Map<String, dynamic>).map(
              (key, value) =>
                  MapEntry(key, FigmaFileJsonComponent.fromJson(value)),
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
