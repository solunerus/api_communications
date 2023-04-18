/// Removes all spaces from a string, replacing them with a single space.
String spaceRemove(String text) => text.replaceAll(RegExp(r'\s+'), ' ');
