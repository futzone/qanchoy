import 'package:qanchoy/qanchoy.dart';
import 'package:qanchoy/src/repository/widget.dart';

class MenuItem extends Widget {
  final String title;
  final String href;
  bool release;
  final String? selectedColor;
  final String? selectedTextColor;
  final String? unselectedColor;
  final String? unselectedTextColor;
  final String? borderRadius;
  final String? padding;
  final String? margin;
  final String? minWidth;

  MenuItem({
    this.release = false,
    required this.title,
    required this.href,
    this.minWidth,
    this.selectedColor,
    this.selectedTextColor,
    this.unselectedColor,
    this.unselectedTextColor,
    this.borderRadius,
    this.padding,
    this.margin,
  });

  @override
  String build() {
    final selectedStyle = '''
      background-color: ${selectedColor ?? "#007BFF"};
      color: ${selectedTextColor ?? "white"};
      ${borderRadius ?? ''}
      ${padding ?? ''}
      ${margin ?? ''}
      text-decoration: none;
      font-family: ${Fonts.verdana};
      min-width: ${minWidth ?? "200px"};
      display: inline-block;
      transition: all 0.2s ease-in-out;
    '''.trim().replaceAll('\n', '');

    final unselectedStyle = '''
      background-color: ${unselectedColor ?? "#007BFF"};
      color: ${unselectedTextColor ?? "white"};
      ${borderRadius ?? ''}
      ${padding ?? ''}
      ${margin ?? ''}
       font-family: ${Fonts.verdana};
      text-decoration: none;
      min-width: ${minWidth ?? "200px"};
      display: inline-block;
      transition: all 0.2s ease-in-out;
    '''.trim().replaceAll('\n', '');

    return '''
<a href="${release ? '$href.html' : href}" 
   data-path="${release ? '$href.html' : href}" 
   data-selected-style="$selectedStyle" 
   style="$unselectedStyle">
   $title
</a>
''';
  }
}
