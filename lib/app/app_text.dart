import 'package:drivers/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/app/ui/colors.dart';

enum AppTextTypes {
  veryLargeTemperature,
  normal,
  normalVerySmall,
  normalSmall,
  normalMedium,
}

extension AppTextExt on AppTextTypes {
  TextStyle get textStyle {
    final colors = AppColorScheme.of(getCurrentContext).colors;
    TextStyle textStyle = TextStyle(
      color: colors.normalText.onBackground,
    );
    switch (this) {
      case AppTextTypes.veryLargeTemperature:
        textStyle = textStyle.copyWith(
          fontSize: 68,
          fontWeight: FontWeight.w600,
        );
        break;
      case AppTextTypes.normal:
        textStyle = textStyle.copyWith(
          fontSize: 32,
          fontWeight: FontWeight.w500,
        );
        break;
      case AppTextTypes.normalSmall:
        textStyle = textStyle.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        );
        break;
      case AppTextTypes.normalVerySmall:
        textStyle = textStyle.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        );
        break;
      case AppTextTypes.normalMedium:
        textStyle = textStyle.copyWith(
          fontSize: 22,
          fontWeight: FontWeight.w600,
        );
        break;
    }
    return textStyle;
  }

  AppTextWidget widget(
    String? text, {
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
  }) {
    return AppTextWidget(
      text: text,
      appTextTypes: this,
      color: color,
      key: key,
      textOverflow: textOverflow,
      textAlign: textAlign,
    );
  }
}

class AppTextWidget extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final AppTextTypes appTextTypes;

  const AppTextWidget({
    required this.appTextTypes,
    this.text,
    Key? key,
    this.color,
    this.textAlign,
    this.textOverflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context).colors;
    return Text(
      text!,
      overflow: textOverflow,
      textAlign: textAlign,
      style: appTextTypes.textStyle.copyWith(color: color ?? colors.normalText.onBackground),
    );
  }
}
