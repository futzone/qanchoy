class ButtonStyle {
  static String primary({String color = "#FFFFFF", String background = "#007BFF"}) =>
      "color: $color; background-color: $background; border: none; padding: 12px 24px; border-radius: 4px; font-size: 16px; cursor: pointer;";

  static String secondary({String color = "#FFFFFF", String background = "#6C757D"}) =>
      "color: $color; background-color: $background; border: none; padding: 12px 24px; border-radius: 4px; font-size: 16px; cursor: pointer;";

  static String outline({String color = "#007BFF"}) =>
      "color: $color; background-color: transparent; border: 2px solid $color; padding: 10px 22px; border-radius: 4px; font-size: 16px; cursor: pointer;";

  static String small =
      "padding: 6px 12px; font-size: 14px;";

  static String large =
      "padding: 14px 28px; font-size: 18px;";
}
