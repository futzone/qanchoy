class Debugger {
  static void log(String message) {
    final now = DateTime.now().toIso8601String();
    print("[$now] ⚙️  $message");
  }

  static void warn(String message) {
    final now = DateTime.now().toIso8601String();
    print("[$now] ⚠️  WARNING: $message");
  }

  static void error(String message) {
    final now = DateTime.now().toIso8601String();
    print("[$now] ❌ ERROR: $message");
  }
}
