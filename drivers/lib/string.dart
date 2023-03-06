class StringHelper {
  static String capitalize(String s) {
    return '${s[0].toUpperCase()}${s.substring(1).toLowerCase()}';
  }
}

String hexToAscii(String hexString) => List.generate(
      hexString.length ~/ 2,
      (i) => String.fromCharCode(int.parse(hexString.substring(i * 2, (i * 2) + 2), radix: 16)),
    ).join();
