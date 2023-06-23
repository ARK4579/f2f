import 'package:f2f/f2f.dart';

class FigmaFileNode {
  final String? id;
  final String? name;
  final String? type;
  final String? scrollBehavior;
  final String? blendMode;
  final List<FigmaFileNode>? children;
  final List<FigmaFileNodeBoundVariable>? boundVariables;
  final String? characters;

  const FigmaFileNode({
    this.id,
    this.name,
    this.type,
    this.scrollBehavior,
    this.blendMode,
    this.children,
    this.boundVariables,
    this.characters,
  });

  factory FigmaFileNode.fromJson(Map<String, dynamic> json) {
    return FigmaFileNode(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      scrollBehavior: json['scrollBehavior'],
      blendMode: json['blendMode'],
      children: json['children'] != null
          ? (json['children'] as List<dynamic>)
              .map((e) => FigmaFileNode.fromJson(e))
              .toList()
          : null,
      boundVariables: json['boundVariables'] != null
          ? (json['boundVariables'] as Map<String, dynamic>)
              .entries
              .map((e) => FigmaFileNodeBoundVariable.fromJson(e.key, e.value))
              .toList()
          : null,
      characters: json['characters'],
    );
  }

  // to Json
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'scrollBehavior': scrollBehavior,
      'blendMode': blendMode,
      'children': children,
      'boundVariables':
          boundVariables?.map((e) => MapEntry(e.variableName, e.toJson())),
      'characters': characters,
    };
  }
}
