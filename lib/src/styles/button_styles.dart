import 'package:qanchoy/src/styles/text_style.dart';

class ButtonStyles {
  final String width;
  final String height;
  final String radius;
  final String color;
  final String gradient;
  final String border;
  final String hoverColor;
  final String shadow;
  final String? padding;
  final TextStyle? textStyle;

  const ButtonStyles({
    this.width = "auto",
    this.height = "auto",
    this.radius = "0px",
    this.color = "",
    this.gradient = "",
    this.border = "",
    this.hoverColor = "",
    this.shadow = "",
    this.padding,
    this.textStyle,
  });

  String build() {
    final buffer = StringBuffer();

    if (width.isNotEmpty) buffer.write("width: $width;");
    if (height.isNotEmpty) buffer.write("height: $height;");
    if (radius.isNotEmpty) buffer.write("border-radius: $radius;");
    if (color.isNotEmpty) buffer.write("background-color: $color;");
    if (gradient.isNotEmpty) buffer.write("background: $gradient;");
    if (border.isNotEmpty) buffer.write("border: $border;");
    if (shadow.isNotEmpty) buffer.write("box-shadow: $shadow;");
    if (padding != null) buffer.write("$padding");
     

    return buffer.toString();
  }
}
