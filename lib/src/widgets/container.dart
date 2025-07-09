import 'package:qanchoy/qanchoy.dart';
import 'package:qanchoy/src/repository/widget.dart';

class Container extends Widget {
  final Widget? child;
  final BoxDecoration decoration;

  Container({this.child, this.decoration = const BoxDecoration()});

  @override
  String build() {
    return '<div style="${decoration.toString()}">${child?.build() ?? ''}</div>';
  }
}
