import 'package:f2f/f2f.dart';

class FigmaFile {
  final String? name;
  final String? lastModified;
  final String? thumbnailUrl;
  final String? version;
  final String? role;
  final String? editorType;
  final String? linkAccess;
  final int? schemaVersion;
  final List<FigmaFileStyle>? styles;
  final List<FigmaFileComponentSet>? componentSets;
  final List<FigmaFileComponent>? components;

  FigmaFile({
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

  factory FigmaFile.fromFile(String filePath) {
    return FigmaFile.fromJson(
      Map<String, dynamic>.from(
        jsonDecode(File(filePath).readAsStringSync()),
      ),
    );
  }

  factory FigmaFile.fromJson(Map<String, dynamic> json) {
    return FigmaFile(
      name: json['name'],
      lastModified: json['lastModified'],
      thumbnailUrl: json['thumbnailUrl'],
      version: json['version'],
      role: json['role'],
      editorType: json['editorType'],
      linkAccess: json['linkAccess'],
      schemaVersion: json['schemaVersion'],
      styles: json['styles'] != null
          ? (json['styles'] as Map<String, dynamic>)
              .entries
              .map((e) => FigmaFileStyle.fromJson(e.key, e.value))
              .toList()
          : null,
      componentSets: json['componentSets'] != null
          ? (json['componentSets'] as Map<String, dynamic>)
              .entries
              .map((e) => FigmaFileComponentSet.fromJson(e.key, e.value))
              .toList()
          : null,
      components: json['components'] != null
          ? (json['components'] as Map<String, dynamic>)
              .entries
              .map((e) => FigmaFileComponent.fromJson(e.key, e.value))
              .toList()
          : null,
    );
  }

  // to json
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'lastModified': lastModified,
      'thumbnailUrl': thumbnailUrl,
      'version': version,
      'role': role,
      'editorType': editorType,
      'linkAccess': linkAccess,
      'schemaVersion': schemaVersion,
      'styles': styles?.map((e) => MapEntry(e.key, e.toJson())),
      'componentSets': componentSets?.map((e) => MapEntry(e.key, e.toJson())),
      'components': components?.map((e) => MapEntry(e.key, e.toJson())),
    };
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
