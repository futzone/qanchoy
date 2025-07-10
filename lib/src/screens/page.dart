import 'package:qanchoy/qanchoy.dart';
import 'package:qanchoy/src/repository/widget.dart';
import 'package:qanchoy/src/screens/menu_bar.dart';
import 'package:qanchoy/src/widgets/column.dart';
import 'package:qanchoy/src/widgets/row.dart';
import 'package:qanchoy/src/widgets/expanded.dart';
import 'package:qanchoy/src/widgets/header.dart';

class Page {
  final String title;
  final String description;
  final String path;
  final List<Widget> body;
  final String? background;
  final String styles;
  final Map<String, String> meta;
  Header? header;
  MenuBar? menuBar;
  final bool hideHeader;
  final bool hideMenuBar;

  Page({
    this.title = '',
    this.description = '',
    this.path = '',
    this.body = const [],
    this.background,
    this.styles = '',
    this.meta = const {},
    this.header,
    this.menuBar,
    this.hideHeader = false,
    this.hideMenuBar = false,
  });

  String build() {
    final metaTags = meta.entries.map((e) => '<meta name="${e.key}" content="${e.value}">').join('\n  ');
    final bodyStyle = '''
      margin: 0;
      padding: 0;
      ${background != null ? 'background: $background;' : ''}
    ''';

    return '''
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>$title</title>
  <meta name="description" content="$description" />
  $metaTags
  <style>
    $styles
    body { $bodyStyle }

    .layout-desktop { display: flex; flex-direction: row; min-height: 100vh; }
    .layout-mobile  { display: flex; flex-direction: column; }

    @media (max-width: 767px) {
      .layout-desktop { display: none; }
    }
    @media (min-width: 768px) {
      .layout-mobile { display: none; }
    }
  </style>
</head>
<body>
  ${hideHeader || header == null ? '' : header!.build()}

  ${hideMenuBar || menuBar == null ? Column(children: body).build() : '''
<div class="layout-desktop">
  ${menuBar!.build()}
  <div style="flex:1;">
    ${body.map((w) => w.build()).join('\n')}
  </div>
</div>
<div class="layout-mobile">
  ${menuBar!.build()}
  <div>
    ${body.map((w) => w.build()).join('\n')}
  </div>
</div>
'''}
</body>
</html>
''';
  }
}
