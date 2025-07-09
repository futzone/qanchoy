import 'package:qanchoy/src/repository/widget.dart';
import 'package:qanchoy/src/styles/header_style.dart';

class Header extends Widget {
  final Widget title;
  final List<Widget> actions;
  final HeaderStyle styles;
  final String padding;
  final String gap;

  Header({required this.title, this.gap = '8px', this.actions = const [], this.styles = const HeaderStyle(), this.padding = '16px'})
    : assert(actions.isNotEmpty, 'Actions cannot be empty');

  @override
  String build() {
    final str = '''
<header style="display: flex; justify-content: space-between; align-items: center; padding: $padding; ${styles.build()}">
  ${title.build()}
  <div style="display: flex; gap: $gap;">
    ${actions.map((e) => e.build()).join('\n')}
  </div>
</header>
''';
    
    return str;
  }
}
