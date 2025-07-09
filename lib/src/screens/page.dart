import 'package:qanchoy/src/repository/widget.dart';

class Page {
  final String title;
  final String description;
  final List<Widget> body;
  final String styles;
  final Map<String, String> meta;

  Page({required this.title, required this.description, required this.body, this.styles = "", this.meta = const {}});

  String build() {
    final metaTags = meta.entries.map((e) => '<meta name="${e.key}" content="${e.value}" />').join('\n  ');

    return """
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
     body { margin: 0; padding: 0; }
  </style>
</head>
<body>
  ${body.map((widget) => widget.build()).join('\n')}
</body>
</html>
""";
  }
}
