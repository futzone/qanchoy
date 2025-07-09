import 'package:qanchoy/qanchoy.dart';

final aboutPage = Page(
  title: "About",
  description: "It is just about page",
  body: [
    Column(
      children: [
        Text("Welcome to the About Page", style: TextStyle(typography: Typography.h1)),
        Image(src: "https://picsum.photos/536/354"),
        Text("Welcome to the About Page", style: TextStyle(typography: Typography.bodyMedium)),
        Container(
          child: Text("This is a container", style: TextStyle()),
          decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(10), color: Colors.red),
        ),
      ],
    ),
  ],
);
