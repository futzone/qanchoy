import 'typography.dart';
import 'breakpoints.dart';

class Theme {
  final String primaryColor;
  final String secondaryColor;
  final String backgroundColor;
  final String fontFamily;
  final Typography typography;
  final Breakpoints breakpoints;

  const Theme({
    required this.primaryColor,
    required this.secondaryColor,
    required this.backgroundColor,
    required this.fontFamily,
    required this.typography,
    required this.breakpoints,
  });
}
