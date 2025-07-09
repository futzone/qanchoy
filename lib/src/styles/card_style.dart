class BoxDecoration {
  final String color;
  final String? borderRadius;
  final String border;
  final String boxShadow;
  final String gradient;

  const BoxDecoration({
    this.color = "#FFFFFF",
    this.borderRadius = '',
    this.border = "none",
    this.boxShadow = "0 2px 4px rgba(0,0,0,0.1)",
    this.gradient = "",
  });

  @override
  String toString() {
    final gradientPart = gradient.isNotEmpty ? "background: $gradient;" : "background-color: $color;";
    return "$gradientPart ${borderRadius ?? ''} border: $border; box-shadow: $boxShadow;";
  }
}
