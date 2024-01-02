class AppTime {
  /// [dateTimeNow] is a method that returns a `String` containing the current
  /// date and time in the format `YYYYMMDD HH:MM:SS.SSS`.
  static String dateTimeNow({int endNum = 21}) =>
      (DateTime.now()).toString().replaceAll("-", "").substring(0, endNum);

  static String dateTimeNowPlusDays({int days = 35}) {
    final now = DateTime.now();
    final futureDate = now.add(Duration(days: days));

    return futureDate.toString().replaceAll("-", "").substring(0, 8);
  }
}
