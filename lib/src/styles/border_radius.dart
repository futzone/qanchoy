class BorderRadius {
  static String all(double radius) => "border-radius: ${radius}px;";

  static String only({double topLeft = 0, double topRight = 0, double bottomRight = 0, double bottomLeft = 0}) =>
      "border-top-left-radius: ${topLeft}px; "
      "border-top-right-radius: ${topRight}px; "
      "border-bottom-right-radius: ${bottomRight}px; "
      "border-bottom-left-radius: ${bottomLeft}px;";

  static String symmetric({double vertical = 0, double horizontal = 0}) =>
      "border-top-left-radius: ${vertical}px; "
      "border-top-right-radius: ${horizontal}px; "
      "border-bottom-right-radius: ${vertical}px; "
      "border-bottom-left-radius: ${horizontal}px;";

  static String circular(double radius) => "border-radius: ${radius}px;";

  static String topLeft(double radius) => "border-top-left-radius: ${radius}px;";

  static String topRight(double radius) => "border-top-right-radius: ${radius}px;";

  static String bottomRight(double radius) => "border-bottom-right-radius: ${radius}px;";

  static String bottomLeft(double radius) => "border-bottom-left-radius: ${radius}px;";
}
