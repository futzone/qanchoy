import 'package:qanchoy/src/repository/widget.dart';

class SizedBox extends Widget {
  final String width;
  final String height;

  SizedBox({this.width = "0px", this.height = "0px"});

  @override
  String build() {
    return '<div style="width: $width; height: $height;"></div>';
  }
}
