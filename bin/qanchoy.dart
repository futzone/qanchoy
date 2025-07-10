import 'package:qanchoy/qanchoy.dart';
import 'pages/home.dart';
import 'pages/about.dart';
import 'pages/changelog.dart';
import 'pages/docs.dart';

void main() {
  final app = QachoyApp(
    theme: QachoyApp.defaultTheme,
    pages: [
      homePage, aboutPage, docsPage, changelog,

      /// Boshqa pagelar bo'ladi
    ],
  );
  app.runApp();
}
