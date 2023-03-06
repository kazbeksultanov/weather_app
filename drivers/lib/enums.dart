import 'package:collection/collection.dart' show IterableExtension;

class EnumString {
  static String parse<T>(T enumItem) {
    return enumItem.toString().split('.')[1];
  }

  static T? fromString<T>(List<T> enumValues, String value) {
    return enumValues.singleWhereOrNull(
      (enumItem) => EnumString.parse(enumItem) == value,
    );
  }
}
