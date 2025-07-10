import 'package:qanchoy/src/repository/widget.dart';

class MenuItem extends Widget {
  final String title;
  final String href;
  final String selectedStyle;
  final String unselectedStyle;

  MenuItem({
    required this.title,
    required this.href,
    this.selectedStyle = 'font-weight: bold; color: #007BFF;',
    this.unselectedStyle = 'color: #333;',
  });

  @override
  String build() {
    return '<a href="$href" data-path="$href" style="$unselectedStyle">$title</a>';
  }
}
