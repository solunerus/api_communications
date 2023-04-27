class AppTime {
  /// [dateTimeNow] is a method that returns a `String` containing the current
  /// date and time in the format `YYYYMMDD HH:MM:SS.SSS`.
  static String dateTimeNow() =>
      (DateTime.now()).toString().replaceAll("-", "").substring(0, 21);
}
