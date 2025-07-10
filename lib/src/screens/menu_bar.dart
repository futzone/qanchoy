import 'package:qanchoy/src/repository/widget.dart';
import 'package:qanchoy/src/widgets/menu_bar_item.dart';

class MenuBar extends Widget {
  final List<MenuItem> sections;
  final String? padding;
  final String? borderRadius;
  final String? backgroundColor;
  final String? gap;
  final String? boxShadow;
  bool release;

  MenuBar({
    this.release = false,
    required this.sections,
    this.padding,
    this.borderRadius,
    this.backgroundColor,
    this.gap,
    this.boxShadow = "0 2px 4px rgba(0,0,0,0.1)",
  });

  @override
  String build() {
    return '''
<nav style="display: flex; flex-direction: column; gap: ${gap ?? '8px'}; ${padding ?? ''}; background-color: ${backgroundColor ?? '#f8f9fa'}; ${borderRadius ?? ''} box-shadow: $boxShadow;">
  ${sections.map((item) {
      MenuItem kItem = item;
      kItem.release = release;
      return kItem.build();
    }).join('\n')}
</nav>
<script>
  document.addEventListener('DOMContentLoaded', function() {
    
    const currentFile = window.location.pathname.split('/').pop();
    const currentPath = currentFile === '' ? 'index.html' : currentFile;

    document.querySelectorAll('a[data-path]').forEach(link => {
      if (link.getAttribute('data-path') === currentPath) {
      
        link.style.cssText = link.getAttribute('data-selected-style');
      }
    });
  });
</script>
''';
  }
}
