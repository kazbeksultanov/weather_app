import 'package:localized_string/localized_string.dart';
import 'package:drivers/exceptions/common.dart';
import 'package:localization/strings.dart';

LocalizedString showExceptionMessage(Object exception) {
  if (exception is LocalizeMessageException) {
    return exception.localizedMessage;
  } else {
    return AppStrings.string((strings) => strings.unexpectedError);
  }
}
