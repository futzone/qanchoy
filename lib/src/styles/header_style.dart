class HeaderStyle {
  final String backgroundColor;
  final String textColor;
  final String height;
  final String shadow;
  final String padding;
  final String borderBottom;

  const HeaderStyle({
    this.backgroundColor = "#ffffff",
    this.textColor = "#000000",
    this.height = "60px",
    this.shadow = "",
    this.padding = "0 16px",
    this.borderBottom = "",
  });

  String build() {
    return '''
      background-color: $backgroundColor;
      color: $textColor;
      height: $height;
      padding: $padding;
      ${shadow.isNotEmpty ? "box-shadow: $shadow;" : ""}
      ${borderBottom.isNotEmpty ? "border-bottom: $borderBottom;" : ""}
    ''';
  }
}
