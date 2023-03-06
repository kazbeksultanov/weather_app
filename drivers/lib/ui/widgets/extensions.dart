import 'package:flutter/widgets.dart';

extension JoinWithWidget on List<Widget> {
  List<Widget> joinWithWidgetS(Widget separator, {bool includeTopBottom = false}) {
    final List<Widget> result = [];

    if (includeTopBottom) {
      result.add(separator);
    }

    for (var i = 0; i < length; i++) {
      final component = this[i];
      result.add(component);

      if (i < length - 1) {
        result.add(separator);
      }
    }

    if (includeTopBottom) {
      result.add(separator);
    }

    return result;
  }
}
