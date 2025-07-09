class ImageStyle {
  /// Default image settings
  static const String contain = "contain";
  static const String cover = "cover";
  static const String fill = "fill";
  static const String none = "none";
  static const String scaleDown = "scale-down";
  static const String inherit = "inherit";
  static const String initial = "initial";
  static const String unset = "unset";
  static const String revert = "revert";
  static const String stretch = "stretch";

  ///
  ///
  final double? width;
  final double? height;
  final String? fit;
  final double? borderRadius;
  final String? extra;

  const ImageStyle({this.width, this.height, this.fit, this.borderRadius, this.extra});

  @override
  String toString() {
    final buffer = StringBuffer();

    if (width != null) buffer.write("width: ${width}px; ");
    if (height != null) buffer.write("height: ${height}px; ");
    if (fit != null) buffer.write("object-fit: $fit; ");
    if (borderRadius != null) buffer.write("border-radius: ${borderRadius}px; ");
    if (extra != null) buffer.write("$extra");

    return buffer.toString().trim();
  }
}
