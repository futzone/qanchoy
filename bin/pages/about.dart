import 'package:qanchoy/qanchoy.dart';
import 'package:qanchoy/src/screens/menu_bar.dart';
import 'package:qanchoy/src/styles/cross_axis_alignment.dart';
import 'package:qanchoy/src/styles/main_axis_alignment.dart';
import 'package:qanchoy/src/styles/markdown_style.dart';
import 'package:qanchoy/src/widgets/markdown.dart';
import 'package:qanchoy/src/widgets/menu_bar_item.dart';

final aboutPage = Page(
  path: 'about',
  title: 'About',
  description: 'Markdown viewer with sidebar',
  background: '#f5f5f5',
  body: [
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      styles: 'min-height: 100vh;',
      children: [  Container(
          extra: 'flex: 1; padding: 24px; margin: 24px;',
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white),
          child: Markdown(path: 'bin/md/about/about.md', style: MarkdownStyle(codeTextColor: Colors.black, codeBackground: Colors.codeBg)),
        ),
      ],
    ),
  ],
);
