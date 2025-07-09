class TextStyle {
  final String fontSize;
  final String fontWeight;
  final String color;
  final String lineHeight;
  final String fontFamily;
  final String? typography;

  const TextStyle({
    this.fontSize = '14px',
    this.fontWeight = 'normal',
    this.color = 'black',
    this.lineHeight = "1.5",
    this.fontFamily = "sans-serif",
    this.typography,
  });

  @override
  String toString() {
    if (typography != null) return typography!;
    return "font-size: $fontSize; "
           "font-weight: $fontWeight; "
           "color: $color; "
           "line-height: $lineHeight; "
           "font-family: $fontFamily;";
  }
}
