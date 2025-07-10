import 'dart:io';
import 'package:qanchoy/qanchoy.dart';
import 'package:qanchoy/src/screens/menu_bar.dart';
import 'package:qanchoy/src/widgets/header.dart';

class QanchoyApp {
  final Theme theme;
  final List<Page> pages;
  final int port;
  final bool release;
  Header? header;
  MenuBar? menuBar;

  QanchoyApp({this.header, this.menuBar, this.release = false, required this.theme, required this.pages, this.port = 8080});

  void runApp() async {
    Debugger.log("QanchoyApp started on http://localhost:$port");

    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, port);

    await for (final request in server) {
      final path = request.uri.path == '/' ? '/index' : request.uri.path;

      // 🛡 Static files (favicon, assets) serve qilish
      if ((path == '/favicon.ico' || path.startsWith('/assets/'))) {
        final file = File('bin/$path');
        print(file.path);
        if (await file.exists()) {
          final ext = file.uri.pathSegments.last.split('.').last;
          final contentType = _getContentType(ext);
          request.response.headers.contentType = contentType;
          await request.response.addStream(file.openRead());
          await request.response.close();
          continue;
        }
      }

      // 🔧 Page qidirish
      final page = pages.firstWhere((p) => '/${p.path.toLowerCase()}' == path, orElse: () => pages.first);

      // 🧩 Default header va menu bar ni qo‘shish
      if (menuBar != null && page.menuBar == null) page.menuBar = menuBar;
      if (header != null && page.header == null && !page.hideHeader) page.header = header;

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

  /// 🧰 Fayl extension asosida ContentType aniqlash
  ContentType _getContentType(String ext) {
    switch (ext) {
      case 'ico':
        return ContentType('image', 'x-icon');
      case 'png':
        return ContentType('image', 'png');
      case 'jpg':
      case 'jpeg':
        return ContentType('image', 'jpeg');
      case 'css':
        return ContentType('text', 'css', charset: 'utf-8');
      case 'js':
        return ContentType('application', 'javascript', charset: 'utf-8');
      case 'svg':
        return ContentType('image', 'svg+xml');
      case 'woff':
        return ContentType('font', 'woff');
      case 'woff2':
        return ContentType('font', 'woff2');
      default:
        return ContentType.binary;
    }
  }
}
