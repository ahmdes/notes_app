class DateManager {
  static String getCurrentDate() {
    DateTime date = DateTime.now();
    return "${date.day}/${date.month}/${date.year}";
  }
}
