import 'package:qanchoy/qanchoy.dart';
import 'package:qanchoy/src/screens/menu_bar.dart';
import 'package:qanchoy/src/widgets/menu_bar_item.dart';

final List<Map<String, dynamic>> _menuItems = [
  {"title": "About page", "href": "about"},

  {"title": "Changelog page", "href": "changelog"},

  {"title": "Docs page", "href": "docs"},

  ///
];

final appMenuBarScreen = MenuBar(
  backgroundColor: Colors.white,
  padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
  borderRadius: BorderRadius.circular(12),

  sections: [
    for (int i = 0; i < _menuItems.length; i++)
      MenuItem(
        title: _menuItems[i]['title'],
        href: _menuItems[i]['href'],
        selectedColor: Colors.royalBlue,
        selectedTextColor: Colors.white,
        unselectedColor: Colors.codeBg,
        unselectedTextColor: Colors.black,
        padding: EdgeInsets.paddingOnly(left: 16, right: 16, top: 12, bottom: 12),
        margin: EdgeInsets.only(left: 8, right: 8, top: i == 0 ? 8 : 2, bottom: 0),
        borderRadius: BorderRadius.circular(8),
        minWidth: '300px',
      ),
  ],
);
