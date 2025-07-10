import 'dart:io';

import 'package:qanchoy/qanchoy.dart';

void build(QanchoyApp app) {
  final pages = app.pages;
  QanchoyApp qanchoyApp = app;
  qanchoyApp.menuBar?.release = true;
 
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

    final html = page.build();
    final fixedHtml = fixLinks(html);

    final file = File('build/${page.path}.html');
    file.writeAsStringSync(fixedHtml);
    Debugger.log("✅ Built: build/${page.path}.html");
  }

  Debugger.log("✨ Build completed!");
}

String fixLinks(String html) {
  // Bu yerda href="/" yoki href="/about" kabi boshlanadigan linklarni topamiz
  final hrefRegex = RegExp(r'href="([^"]+)"');
  return html.replaceAllMapped(hrefRegex, (match) {
    final original = match.group(1)!;

    // Agar allaqachon .html bo'lsa yoki tashqi link bo'lsa, o'zgartirmaymiz
    if (original.endsWith('.html') || original.startsWith('http') || original.startsWith('#')) {
      return 'href="$original"';
    }

    // Aks holda, oxiriga .html qo‘shamiz
    return 'href="$original.html"';
  });
}
