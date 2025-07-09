import 'package:qanchoy/qanchoy.dart';
import 'package:qanchoy/src/styles/cross_axis_alignment.dart';
import 'package:qanchoy/src/styles/main_axis_alignment.dart';
import 'package:qanchoy/src/styles/markdown_style.dart';
import 'package:qanchoy/src/widgets/markdown.dart';
import 'package:qanchoy/src/widgets/sized_box.dart';

final aboutPage = Page(
  title: 'About',
  description: 'Markdown viewer with sidebar',
  background: '#f5f5f5',
  body: [
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      styles: 'min-height: 100vh;',
      children: [
        Container(
          extra: 'width: 250px; background-color: #fff; padding: 16px; box-shadow: 2px 0 8px rgba(0,0,0,0.1);',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('📚 Qanchoy Docs', style: TextStyle(fontSize: '20px', fontWeight: 'bold')),
              SizedBox(height: '16px'),
              Button(text: 'Introduction', onClick: '#'),
              Button(text: 'Getting Started', onClick: '#'),
              Button(text: 'Widgets', onClick: '#'),
            ],
          ),
        ),
        Container(
          extra: 'flex: 1; padding: 24px; margin: 24px',
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: Markdown(path: 'bin/md/about/about_start.md', style: MarkdownStyle(codeTextColor: Colors.black)),
        ),
      ],
    ),
  ],
);
