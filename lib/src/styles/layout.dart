class Layout {
  static const String row =
      "display: flex; flex-direction: row;";

  static const String column =
      "display: flex; flex-direction: column;";

  static String container({double maxWidth = 1200, String margin = "0 auto"}) =>
      "max-width: ${maxWidth}px; margin: $margin;";

  static String grid({int columns = 2, double gap = 16}) =>
      "display: grid; grid-template-columns: repeat($columns, 1fr); gap: ${gap}px;";

  static String center =
      "display: flex; justify-content: center; align-items: center;";

  static String spaceBetween =
      "display: flex; justify-content: space-between; align-items: center;";
}
