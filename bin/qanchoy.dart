import 'package:qanchoy/qanchoy.dart';
 import 'pages/home.dart';
import 'pages/about.dart';

void main() {
  final app = QachoyApp(
    theme: QachoyApp.defaultTheme,
    pages: [
      
      homePage, aboutPage,

      /// Boshqa pagelar bo'ladi
    ],
  );
  app.runApp();
}
