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
    return '''
<header style="display: flex; justify-content: space-between; align-items: center; padding: $padding; ${styles.build()}">
  ${title.build()}
  <nav class="header-actions">
    ${actions.map((e) => e.build()).join('\n')}
  </nav>
  <div class="menu-icon" onclick="toggleMenu()">&#9776;</div>
</header>

<style>
  .header-actions {
    display: flex;
    gap: $gap;
  }
  .menu-icon {
    display: none;
    font-size: 24px;
    cursor: pointer;
  }
  @media (max-width: 768px) {
    .header-actions {
      display: none;
      flex-direction: column;
      background: #fff;
      position: absolute;
      top: 60px;
      right: 0;
      width: 200px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.2);
      padding: 8px;
    }
    .header-actions.active {
      display: flex;
    }
    .menu-icon {
      display: block;
    }
  }
</style>

<script>
  function toggleMenu() {
    var menu = document.querySelector('.header-actions');
    menu.classList.toggle('active');
  }
</script>
''';
  }
}
