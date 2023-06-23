import 'package:f2f/f2f.dart';

class FigmaFileNode {
  final String? id;
  final String? name;
  final String? type;
  final String? scrollBehavior;
  final String? blendMode;
  final List<FigmaFileNode>? children;
  final Map<String, FigmaFileNodeBoundVariable>? boundVariables;
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
          ? (json['boundVariables'] as Map<String, dynamic>).map(
              (key, value) => MapEntry(
                  key, FigmaFileNodeBoundVariable.fromJson(key, value)),
            )
          : null,
      characters: json['characters'],
    );
  }
}
