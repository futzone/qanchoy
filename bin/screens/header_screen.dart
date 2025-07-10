import 'package:qanchoy/qanchoy.dart';
import 'package:qanchoy/src/styles/button_styles.dart';
import 'package:qanchoy/src/styles/header_style.dart';
import 'package:qanchoy/src/widgets/header.dart';

final appHeaderScreen = Header(
  gap: '16px',
  padding: EdgeInsets.paddingOnly(left: 24, right: 24, top: 4, bottom: 4),
  title: Text("Qanchoy Web App", style: TextStyle(fontSize: '20px', color: Colors.white, fontWeight: 'bold', fontFamily: Fonts.arial)),

  styles: HeaderStyle(
    backgroundColor: Colors.royalBlue,
    height: '64px',
    textColor: Colors.white,
    padding: EdgeInsets.only(left: 0, right: 0, bottom: 0),
  ),
  actions: [
    Button(text: 'About', onClick: 'about', styles: ButtonStyles(textStyle: TextStyle(fontSize: '16px', color: Colors.wheat2, fontFamily: Fonts.verdana))),
    Button(text: 'Contact', onClick: 'Contact', styles: ButtonStyles(textStyle: TextStyle(fontSize: '16px', color: Colors.wheat2, fontFamily: Fonts.verdana))),
    Button(
      text: 'Github',
      onClick: 'https://github.com/futzone',
      styles: ButtonStyles(textStyle: TextStyle(fontSize: '16px', color: Colors.wheat2, fontFamily: Fonts.verdana)),
    ),

    ///
  ],
);
