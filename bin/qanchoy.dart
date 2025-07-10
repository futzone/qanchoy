import 'package:qanchoy/builder/build.dart';
import 'package:qanchoy/qanchoy.dart';
import 'pages/home.dart';
import 'pages/about.dart';
import 'pages/changelog.dart';
import 'pages/docs.dart';
import 'screens/menu_bar_screen.dart';
import 'screens/header_screen.dart';

void main() {
  final app = QanchoyApp(
    header: appHeaderScreen,
    menuBar: appMenuBarScreen,
    theme: QanchoyApp.defaultTheme,
    pages: [
      homePage,
      aboutPage,
      docsPage,
      changelog,

      /// Boshqa pagelar bo'ladi
    ],
  );
  // build(app);
  app.runApp();
}
