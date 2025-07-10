import 'package:qanchoy/qanchoy.dart';
import 'package:qanchoy/src/styles/cross_axis_alignment.dart';
import 'package:qanchoy/src/styles/main_axis_alignment.dart';
import 'package:qanchoy/src/styles/markdown_style.dart';
import 'package:qanchoy/src/widgets/markdown.dart';

final docsPage = Page(
  path: 'docs',
  title: 'Docs',
  description: 'Markdown viewer with sidebar',
  background: '#f5f5f5',
  body: [
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      styles: 'min-height: 100vh;',
      children: [
        Container(
          extra: 'flex: 1; padding: 24px; margin: 24px;',
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white),
          child: Markdown(path: 'bin/md/docs/docs.md', style: MarkdownStyle(codeTextColor: Colors.black, codeBackground: '#f5f5f5')),
        ),
      ],
    ),
  ],
);
