class EdgeInsets {
  static String all(double value) => "margin: ${value}px; padding: ${value}px;";

  static String only({double top = 0, double bottom = 0, double left = 0, double right = 0}) =>
      "margin-top: ${top}px; margin-bottom: ${bottom}px; margin-left: ${left}px; margin-right: ${right}px;";

  static String symmetric({double vertical = 0, double horizontal = 0}) =>
      "margin-top: ${vertical}px; margin-bottom: ${vertical}px; margin-left: ${horizontal}px; margin-right: ${horizontal}px;";

  static String paddingAll(double value) => "padding: ${value}px;";

  static String paddingOnly({double top = 0, double bottom = 0, double left = 0, double right = 0}) =>
      "padding-top: ${top}px; padding-bottom: ${bottom}px; padding-left: ${left}px; padding-right: ${right}px;";

  static String paddingSymmetric({double vertical = 0, double horizontal = 0}) =>
      "padding-top: ${vertical}px; padding-bottom: ${vertical}px; padding-left: ${horizontal}px; padding-right: ${horizontal}px;";
}
