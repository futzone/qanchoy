import 'dart:io';

import 'package:qanchoy/qanchoy.dart';

void build(QachoyApp app) {
  final pages = app.pages;

  Debugger.log("Building static site...");

  final buildDir = Directory('build');
  if (!buildDir.existsSync()) {
    buildDir.createSync(recursive: true);
  }

  for (final page in pages) {
    if (page.header == null && !page.hideHeader) {
      page.header = app.header;
    }

    if (page.menuBar == null && !page.hideMenuBar) {
      page.menuBar = app.menuBar;
    }

    final file = File('build/${page.path}.html');
    file.writeAsStringSync(page.build());
    Debugger.log("✅ Built: build/${page.path}.html");
  }

  Debugger.log("✨ Build completed!");
}
