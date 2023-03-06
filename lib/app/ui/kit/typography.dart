import 'package:flutter/material.dart';
import 'package:weather_app/app/config.dart';
import 'package:weather_app/app/ui/colors.dart';
import 'package:weather_app/app/ui/fonts.dart';

class AppTextStyles extends InheritedWidget {
  @Deprecated('No in new UI Kit')
  TextStyle get totalPrice => TextStyle(
        fontSize: 32,
        fontWeight: NamedFontWeight.light,
        fontFamily: 'Montserrat',
        color: colorScheme.normalText.onBackground,
      );

  TextStyle get bigHeader => TextStyle(
        fontSize: 32,
        fontWeight: NamedFontWeight.medium,
        fontFamily: 'Montserrat',
        color: colorScheme.normalText.onBackground,
      );

  TextStyle get normalHeader => TextStyle(
        fontSize: 24,
        fontWeight: NamedFontWeight.medium,
        fontFamily: 'Montserrat',
        color: colorScheme.normalText.onBackground,
      );

  TextStyle get normalText => TextStyle(
        fontSize: 15,
        fontWeight: NamedFontWeight.regular,
        fontFamily: 'Montserrat',
        color: colorScheme.normalText.onBackground,
        height: 24 / 15,
      );

  TextStyle get normalTextW500 => TextStyle(
        fontSize: 15,
        fontWeight: NamedFontWeight.medium,
        fontFamily: 'Montserrat',
        color: colorScheme.normalText.onBackground,
        height: 24 / 15,
      );

  // @Deprecated('No in new UI Kit')
  TextStyle get smallNormalText => TextStyle(
        fontSize: 14,
        fontWeight: NamedFontWeight.regular,
        fontFamily: 'Montserrat',
        color: colorScheme.normalText.onBackground,
      );

  TextStyle get smallText => TextStyle(
        fontSize: 12,
        fontWeight: NamedFontWeight.medium,
        fontFamily: 'Montserrat',
        color: colorScheme.normalText.onBackground,
      );

  @Deprecated('No in new UI Kit')
  TextStyle get smallTextBold => TextStyle(
        fontSize: 12,
        fontWeight: NamedFontWeight.bold,
        fontFamily: 'Montserrat',
        color: colorScheme.normalText.onBackground,
      );

  TextStyle get linkText => TextStyle(
        fontSize: 15,
        fontWeight: NamedFontWeight.semiBold,
        fontFamily: 'Montserrat',
        color: colorScheme.normalText.onBackground,
        height: 23 / 15,
      );

  TextStyle get smallTextLinks => TextStyle(
        fontSize: 12,
        fontWeight: NamedFontWeight.semiBold,
        fontFamily: 'Montserrat',
        color: colorScheme.normalText.onBackground,
      );

  TextStyle get s11w6 => TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
        color: colorScheme.normalText.onBackground,
      );

  TextStyle get s11w4 => TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
        color: colorScheme.normalText.onBackground,
      );

  TextStyle get s15w6 => TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
        color: colorScheme.normalText.onBackground,
      );

  TextStyle get errorText => TextStyle(
        fontSize: 12,
        fontWeight: NamedFontWeight.regular,
        fontFamily: 'Montserrat',
        color: colorScheme.error,
      );

  final ColorSchemeData colorScheme;
  final ConfigSpec config;

  const AppTextStyles({required this.config, required this.colorScheme, required Widget child})
      : super(child: child);

  static AppTextStyles of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}

class AppNormalHeader extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const AppNormalHeader(
    this.text, {
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
      style: AppTextStyles.of(context)
          .normalHeader
          .copyWith(color: color ?? colors.normalText.onBackground),
    );
  }
}

class AppBigHeader extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const AppBigHeader(
    this.text, {
    Key? key,
    this.color,
    this.textAlign,
    this.textOverflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context).colors;
    return Text(
      text,
      overflow: textOverflow,
      textAlign: textAlign,
      style: AppTextStyles.of(context)
          .bigHeader
          .copyWith(color: color ?? colors.normalText.onBackground),
    );
  }
}

class AppNormalText extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const AppNormalText(
    this.text, {
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
      style: AppTextStyles.of(context)
          .normalText
          .copyWith(color: color ?? colors.normalText.onBackground),
    );
  }
}

class AppNormalW5Text extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const AppNormalW5Text(
    this.text, {
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
      style: AppTextStyles.of(context)
          .normalTextW500
          .copyWith(color: color ?? colors.normalText.onBackground),
    );
  }
}

// @Deprecated('No in new UI Kit')
class AppSmallNormalText extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const AppSmallNormalText(
    this.text, {
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
      style: AppTextStyles.of(context)
          .smallNormalText
          .copyWith(color: color ?? colors.normalText.onBackground),
    );
  }
}

class AppErrorText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const AppErrorText(
    this.text, {
    this.textAlign,
    this.textOverflow,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      textAlign: textAlign,
      style: AppTextStyles.of(context).errorText,
    );
  }
}

class AppLinkText extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const AppLinkText(
    this.text, {
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
      style: AppTextStyles.of(context)
          .linkText
          .copyWith(color: color ?? colors.normalText.onBackground),
    );
  }
}

class AppSmallText extends StatelessWidget {
  final String? text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const AppSmallText(
    this.text, {
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
      style: AppTextStyles.of(context)
          .smallText
          .copyWith(color: color ?? colors.normalText.onBackground),
    );
  }
}

@Deprecated('No in new UI Kit')
class AppSmallTextBold extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const AppSmallTextBold(
    this.text, {
    Key? key,
    this.color,
    this.textAlign,
    this.textOverflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context).colors;
    return Text(
      text,
      overflow: textOverflow,
      textAlign: textAlign,
      style: AppTextStyles.of(context)
          .smallTextBold
          .copyWith(color: color ?? colors.normalText.onBackground),
    );
  }
}

class AppSmallTextLinks extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const AppSmallTextLinks(
    this.text, {
    Key? key,
    this.color,
    this.textAlign,
    this.textOverflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context).colors;
    return Text(
      text,
      overflow: textOverflow,
      textAlign: textAlign,
      style: AppTextStyles.of(context)
          .smallTextLinks
          .copyWith(color: color ?? colors.normalText.onBackground),
    );
  }
}

class AppTextS11W6 extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const AppTextS11W6(
    this.text, {
    Key? key,
    this.color,
    this.textAlign,
    this.textOverflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context).colors;
    return Text(
      text,
      overflow: textOverflow,
      textAlign: textAlign,
      style:
          AppTextStyles.of(context).s11w6.copyWith(color: color ?? colors.normalText.onBackground),
    );
  }
}

class AppTextS11W4 extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const AppTextS11W4(
    this.text, {
    Key? key,
    this.color,
    this.textAlign,
    this.textOverflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context).colors;
    return Text(
      text,
      overflow: textOverflow,
      textAlign: textAlign,
      style:
          AppTextStyles.of(context).s11w4.copyWith(color: color ?? colors.normalText.onBackground),
    );
  }
}

class AppTextS15W6 extends StatelessWidget {
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const AppTextS15W6(
    this.text, {
    Key? key,
    this.color,
    this.textAlign,
    this.textOverflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColorScheme.of(context).colors;
    return Text(
      text,
      overflow: textOverflow,
      textAlign: textAlign,
      style:
          AppTextStyles.of(context).s15w6.copyWith(color: color ?? colors.normalText.onBackground),
    );
  }
}
