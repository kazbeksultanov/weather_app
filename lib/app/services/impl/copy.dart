import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:localized_string/localized_string.dart';

import '../copy.dart';

class CopyUIServiceImpl implements CopyUIService {
  final BuildContext _context;

  CopyUIServiceImpl(this._context);

  @override
  Future<void> copy(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
  }

  @override
  Future<void> copyLocalizedFactory(String Function(BuildContext) text) => copy(text(_context));

  @override
  Future<void> copyLocalizedString(LocalizedString text) => copy(text.localize(_context));
}
