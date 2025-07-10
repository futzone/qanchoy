import 'dart:io';

import 'package:qanchoy/qanchoy.dart';
import 'package:qanchoy/src/screens/menu_bar.dart';
import 'package:qanchoy/src/widgets/header.dart';

class QachoyApp {
  final Theme theme;
  final List<Page> pages;
  final int port;
  final Header? header;
  final MenuBar? menuBar;

  const QachoyApp({this.header, this.menuBar, required this.theme, required this.pages, this.port = 8080});

  void runApp() async {
    Debugger.log("QachoyApp started on http://localhost:$port");

    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, port);

    await for (HttpRequest request in server) {
      final path = request.uri.path == '/' ? '/index' : request.uri.path;

      Page page = pages.firstWhere((p) => '/${p.path.toLowerCase()}' == path, orElse: () => pages.first);

      if (menuBar != null && page.menuBar == null) {
        page.menuBar = menuBar;
      }

      if (header != null && page.header == null && !page.hideHeader) {
        page.header = header;
      }
      
      final html = page.build();
      request.response
        ..headers.contentType = ContentType.html
        ..write(html)
        ..close();
    }
  }

  static final defaultTheme = Theme(
    primaryColor: "#007BFF",
    secondaryColor: "#6C757D",
    backgroundColor: "#FFFFFF",
    fontFamily: "Roboto, sans-serif",
    typography: Typography(),
    breakpoints: Breakpoints(),
  );
}
