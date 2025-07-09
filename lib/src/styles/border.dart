class Border {
  static String all({double width = 1, String color = "#000000", String style = "solid"}) => "border: ${width}px $style $color;";

  static String only({double top = 0, double right = 0, double bottom = 0, double left = 0, String color = "#000000", String style = "solid"}) =>
      "border-top: ${top}px $style $color; "
      "border-right: ${right}px $style $color; "
      "border-bottom: ${bottom}px $style $color; "
      "border-left: ${left}px $style $color;";
}
