class FigmaFileNodeBoundVariable {
  final String? id;
  final String? type;
  final String? variableName;

  const FigmaFileNodeBoundVariable({
    this.id,
    this.type,
    this.variableName,
  });

  factory FigmaFileNodeBoundVariable.fromJson(
      String variableName, Map<String, dynamic> json) {
    return FigmaFileNodeBoundVariable(
      id: json['id'],
      type: json['type'],
      variableName: variableName,
    );
  }
}
