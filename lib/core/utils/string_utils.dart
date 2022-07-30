class StringUtils {
  static bool isPhoneNumber(String value) {
    try {
      if (value.startsWith('0')) return true;
      int.parse(value);
      return true;
    } on FormatException {
      return false;
    }
  }

  static String escapeSpecial(String query) {
    return query.replaceAllMapped(RegExp(r'[.*+?^${}()|[\]\\]'), (x) {
      return '\\${x[0]}';
    });
  }

  static String getNameAbbr(String name) {
    final newName = name.split(' ');
    if (newName.length > 1) {
      final firstName = newName[0].substring(0, 1);
      final lastName = newName[1].substring(0, 1);
      return firstName + lastName;
    } else {
      return name.substring(0, 1);
    }
  }

  static String maskCharacter(String text) {
    final newText = text.substring(0, 4);
    const masked = '****';
    final maskedText = '$newText$masked';
    return maskedText;
  }
}
