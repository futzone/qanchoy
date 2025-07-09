import 'dart:io';
import 'package:markdown/markdown.dart' as md;
import 'package:qanchoy/src/repository/widget.dart';
import 'package:qanchoy/src/styles/markdown_style.dart';

class Markdown extends Widget {
  final String path;
  final MarkdownStyle style;

  Markdown({required this.path, this.style = const MarkdownStyle()});

  @override
  String build() {
    final markdownText = File(path).readAsStringSync();
    final html = md.markdownToHtml(markdownText);
    return '''
<div style="${style.build()}">
  <style>
    ${style.codeBlockCss()}
  </style>
  $html
</div>
''';
  }
}
