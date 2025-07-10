import 'package:qanchoy/src/repository/widget.dart';
import 'package:qanchoy/src/widgets/menu_bar_item.dart';

class MenuBar extends Widget {
  final List<MenuItem> sections;

  MenuBar({required this.sections});

  @override
  String build() {
    return '''
<nav style="display: flex; flex-direction: column; gap: 8px; padding: 16px; background-color: #f8f9fa; border-radius: 12px;">
  ${sections.map((item) => item.build()).join('\n')}
</nav>
<script>
  const currentPath = window.location.pathname.split('/').pop();
  document.querySelectorAll('a[data-path]').forEach(link => {
    if (link.getAttribute('data-path') === currentPath) {
      link.style.cssText = "${sections.first.selectedStyle}";
    }
  });
</script>
''';
  }
}
