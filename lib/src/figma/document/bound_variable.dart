class FigmaFileJsonNodeBoundVariable {
  final String? id;
  final String? type;
  final String? variableName;

  const FigmaFileJsonNodeBoundVariable({
    this.id,
    this.type,
    this.variableName,
  });

  factory FigmaFileJsonNodeBoundVariable.fromJson(
      String variableName, Map<String, dynamic> json) {
    return FigmaFileJsonNodeBoundVariable(
      id: json['id'],
      type: json['type'],
      variableName: variableName,
    );
  }
}
