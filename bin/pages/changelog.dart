import 'package:qanchoy/qanchoy.dart';
import 'package:qanchoy/src/screens/menu_bar.dart';
import 'package:qanchoy/src/styles/cross_axis_alignment.dart';
import 'package:qanchoy/src/styles/main_axis_alignment.dart';
import 'package:qanchoy/src/styles/markdown_style.dart';
import 'package:qanchoy/src/widgets/markdown.dart';
import 'package:qanchoy/src/widgets/menu_bar_item.dart';

final changelog = Page(
  path: 'changelog',
  title: 'Changelog',
  description: 'Markdown viewer with sidebar',
  background: '#f5f5f5',
  body: [
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      styles: 'min-height: 100vh;',
      children: [
        MenuBar(
          sections: [
            MenuItem(
              title: 'About page',
              href: 'about',
              selectedStyle: 'background-color: #007BFF; color: white; border-radius: 8px; padding: 12px; text-decoration: none;',
              unselectedStyle: 'color: #333; padding: 12px; border-radius: 8px; text-decoration: none;',
            ),
            MenuItem(
              title: 'Changelog page',
              href: 'changelog',
              selectedStyle: 'background-color: #007BFF; color: white; border-radius: 8px; padding: 12px; text-decoration: none;',
              unselectedStyle: 'color: #333; padding: 12px; border-radius: 8px; text-decoration: none;',
            ),
            MenuItem(
              title: 'Docs Page',
              href: 'docs',
              selectedStyle: 'background-color: #007BFF; color: white; border-radius: 8px; padding: 12px; text-decoration: none;',
              unselectedStyle: 'color: #333; padding: 12px; border-radius: 8px; ',
            ),
          ],
        ),
        Container(
          extra: 'flex: 1; padding: 24px; margin: 24px;',
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white),
          child: Markdown(path: 'bin/md/changelog/changelog.md', style: MarkdownStyle(codeTextColor: Colors.black, codeBackground: '#f5f5f5')),
        ),
      ],
    ),
  ],
);
