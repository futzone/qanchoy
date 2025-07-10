class MenuItemStyle {
  final String normal;
  final String selected;
  final String hover;

  const MenuItemStyle({
    this.normal = 'padding: 8px; color: #333; text-decoration: none;',
    this.selected = 'padding: 8px; color: #007BFF; font-weight: bold;',
    this.hover = 'text-decoration: underline;',
  });
}
