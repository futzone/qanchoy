import 'package:qanchoy/src/repository/widget.dart';
import 'package:qanchoy/src/styles/image_style.dart';
 
class Image extends Widget {
  final String src;
  final String alt;
  final ImageStyle style;

  Image({
    required this.src,
    this.alt = "",
    this.style = const ImageStyle(),
  });

  @override
  String build() {
    return '<img src="$src" alt="$alt" style="${style.toString()}" />';
  }
}
