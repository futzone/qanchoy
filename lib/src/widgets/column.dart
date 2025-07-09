import 'package:qanchoy/src/repository/widget.dart';

class Column extends Widget {
  final List<Widget> children;
  final String styles;
  final String mainAxisAlignment; // justify-content
  final String crossAxisAlignment; // align-items
  final String gap; // spacing

  Column({
    required this.children,
    this.styles = "",
    this.mainAxisAlignment = "flex-start",
    this.crossAxisAlignment = "flex-start",
    this.gap = "0px",
  });

  @override
  String build() {
    return '''
<div style="
  display: flex; 
  flex-direction: column; 
  justify-content: $mainAxisAlignment; 
  align-items: $crossAxisAlignment; 
  gap: $gap;
  $styles">
  ${children.map((child) => child.build()).join('\n')}
</div>
''';
  }
}
