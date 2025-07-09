import 'package:qanchoy/qanchoy.dart';
import 'package:qanchoy/src/repository/widget.dart';

class Container extends Widget {
  final Widget? child;
  final BoxDecoration decoration;
  final String? extra;

  Container({this.child, this.extra, this.decoration = const BoxDecoration()});

  @override
  String build() {
    return '<div style="${decoration.toString()} {${extra ?? ''}}">${child?.build() ?? ''}</div>';
  }
}
