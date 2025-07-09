import 'dart:io';

import 'package:qanchoy/qanchoy.dart';

class QachoyApp {
  final Theme theme;
  final List<Page> pages;
  final int port;

  const QachoyApp({required this.theme, required this.pages, this.port = 8080});

  void runApp() async {
    Debugger.log("QachoyApp started on http://localhost:$port");

    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, port);

    await for (HttpRequest request in server) {
      final path = request.uri.path == '/' ? '/index' : request.uri.path;

      final page = pages.firstWhere((p) => '/${p.title.toLowerCase()}' == path, orElse: () => pages.first);

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
