extension StringExtension on String {
  String capitalise() {
    String text = trim();
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }
}

