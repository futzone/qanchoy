import 'package:qanchoy/qanchoy.dart';
import 'package:qanchoy/src/styles/button_styles.dart';
import 'package:qanchoy/src/styles/cross_axis_alignment.dart';
import 'package:qanchoy/src/styles/main_axis_alignment.dart';
import 'package:qanchoy/src/widgets/sized_box.dart';

final homePage = Page(
  path: 'index',
  hideMenuBar: true,
  title: "Home Page",
  description: "It is just home page",
  background: 'linear-gradient(to bottom, ${Colors.skyBlue}, ${Colors.midnightBlue})',
  body: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: '48px'),
        Text("Assalomu Alaykum", style: TextStyle(fontSize: '40px', fontFamily: Fonts.georgia, color: Colors.black, fontWeight: 'bold')),
        Text("Bu birinchi «Qanchoy Web Page»!", style: TextStyle(typography: Typography.h2)),
        SizedBox(height: '48px'),
        Image(src: "https://picsum.photos/536/354", style: ImageStyle(borderRadius: 16, fit: ImageStyle.cover, height: 400, width: 600)),
        SizedBox(height: '48px'),
        Button(
          text: 'Meni bosing',

          onClick: 'about',
          style: ButtonStyle.primary(color: Colors.white),
          styles: ButtonStyles(
            color: Colors.blue,
            height: '100px',
            width: '300px',
            radius: '16px',
            hoverColor: Colors.red,
            padding: EdgeInsets.paddingOnly(left: 24, right: 24, top: 14, bottom: 14),
            textStyle: TextStyle(fontSize: '16px', color: Colors.white, fontWeight: 'bold'),
          ),
        ),

        SizedBox(height: '48px'),
      ],
    ),
  ],
);
