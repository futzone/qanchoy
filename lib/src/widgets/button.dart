import 'package:qanchoy/src/repository/widget.dart';
import 'package:qanchoy/src/styles/button_styles.dart';

class Button extends Widget {
  final String text;
  final String onClick;
  final ButtonStyles styles;
  final String? style;

  Button({required this.text, this.onClick = "#", this.styles = const ButtonStyles(), this.style});

  @override
  String build() {
    final builded =
        '<a href="$onClick" style="display: inline-block; text-decoration: none; ${styles.textStyle == null ? '' : styles.textStyle.toString()}; ${style ?? styles.build()}">$text</a>';
     return builded;
  }
}
