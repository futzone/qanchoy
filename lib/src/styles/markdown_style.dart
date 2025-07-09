class MarkdownStyle {
  final String textColor;
  final String fontSize;
  final String fontFamily;
  final String lineHeight;
  final String padding;

  // code block uchun
  final String codeBackground;
  final String codeTextColor;
  final String codePadding;
  final String codeBorderRadius;

  const MarkdownStyle({
    this.textColor = '#000000',
    this.fontSize = '16px',
    this.fontFamily = 'sans-serif',
    this.lineHeight = '1.6',
    this.padding = '16px',
    this.codeBackground = '#f5f5f5',
    this.codeTextColor = '#d6336c',
    this.codePadding = '8px',
    this.codeBorderRadius = '4px',
  });

  String build() {
    return '''
color: $textColor;
font-size: $fontSize;
font-family: $fontFamily;
line-height: $lineHeight;
padding: $padding;
''';
  }

  String codeBlockCss() {
    return '''
pre, code {
  background: $codeBackground;
  color: $codeTextColor;
  padding: $codePadding;
  border-radius: $codeBorderRadius;
  display: block;
  overflow-x: auto;
   font-family: 'Fira Code', monospace;
}
''';
  }
}
