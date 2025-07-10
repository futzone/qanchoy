import 'package:qanchoy/src/repository/widget.dart';

class Expanded extends Widget {
  final Widget child;
  final String styles;

  Expanded({required this.child, this.styles = ''});

  @override
  String build() {
    return '''
<div style="flex: 1; $styles">
  ${child.build()}
</div>
''';
  }
}
