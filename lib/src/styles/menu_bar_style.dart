class MenuBarStyle {
  final String backgroundColor;
  final String textColor;
  final String width;
  final String padding;
  final String itemSpacing;
  final String borderRight;

  const MenuBarStyle({
    this.backgroundColor = '#ffffff',
    this.textColor = '#000000',
    this.width = '250px',
    this.padding = '16px',
    this.itemSpacing = '8px',
    this.borderRight = '1px solid #e0e0e0',
  });

  String build() {
    return '''
background-color: $backgroundColor;
color: $textColor;
width: $width;
padding: $padding;
border-right: $borderRight;
display: flex;
flex-direction: column;
gap: $itemSpacing;
''';
  }
}
