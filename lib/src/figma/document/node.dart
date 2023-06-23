import 'package:f2f/f2f.dart';

class FigmaFileJsonNode {
  final String? id;
  final String? name;
  final String? type;
  final String? scrollBehavior;
  final String? blendMode;
  final List<FigmaFileJsonNode>? children;
  final Map<String, FigmaFileJsonNodeBoundVariable>? boundVariables;
  final String? characters;

  const FigmaFileJsonNode({
    this.id,
    this.name,
    this.type,
    this.scrollBehavior,
    this.blendMode,
    this.children,
    this.boundVariables,
    this.characters,
  });

  factory FigmaFileJsonNode.fromJson(Map<String, dynamic> json) {
    return FigmaFileJsonNode(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      scrollBehavior: json['scrollBehavior'],
      blendMode: json['blendMode'],
      children: json['children'] != null
          ? (json['children'] as List<dynamic>)
              .map((e) => FigmaFileJsonNode.fromJson(e))
              .toList()
          : null,
      boundVariables: json['boundVariables'] != null
          ? (json['boundVariables'] as Map<String, dynamic>).map(
              (key, value) => MapEntry(
                  key, FigmaFileJsonNodeBoundVariable.fromJson(key, value)),
            )
          : null,
      characters: json['characters'],
    );
  }
}
