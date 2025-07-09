import 'package:qanchoy/src/repository/widget.dart';
import 'package:qanchoy/src/styles/text_style.dart';

class Text extends Widget {
  final String data;
  final TextStyle style;

  Text(this.data, {required this.style});

  @override
  String build() {
    return '<span style="${style.toString()}">$data</span>';
  }
}
