import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppColors {
  static const Color lightGreen1BD099 = Color(0xFF1BD099);

  static const Color darkBlue0A0C1F = Color(0xFF0A0C1F);
  static const Color darkBlue1A1B35 = Color(0xFF1A1B35);
  static const Color darkGrey191C2E = Color(0xFF191C2E);
  static const Color darkBlue282C4E = Color(0xFF282C4E);
  static const Color darkBlue393E64 = Color(0xFF393E64);
  static const Color darkBlue474C77 = Color(0xFF474C77);
  static const Color darkBlue264782 = Color(0x22264782);
  static const Color darkBlueBAC0EC = Color(0xFFBAC0EC);
  static const Color darkBlue515689 = Color(0xDD515689);
  static const Color darkBlue222344 = Color(0xFF222344);
  static const Color darkBlue656792 = Color(0xFF656792);
  static const Color darkBlue26284D = Color(0xFF26284D);

  static const Color greyA2ABB9 = Color(0xFFA2ABB9);
  static const Color grey737C8A = Color(0xFF737C8A);
  static const Color grey989BB9 = Color(0xFF989BB9);

  static const Color whiteFFFFFF = Color(0xFFFFFFFF);

  static const Color pinkFF7D85 = Color(0xFFFF7D85);
  static const Color pinkE55B63 = Color(0xFFE55B63);
  static const Color orangeED784D = Color(0xFFED784D);
  static const Color orangeFFA34F = Color(0xFFFFA34F);

  static const Color braunF8B125 = Color(0xFFF8B125);
}

class AppOnSurfaceColor {
  final Color onPrimary;
  final Color onBackground;
  final Color onSurface;
  final Color onAlertDialog;

  const AppOnSurfaceColor({
    required this.onPrimary,
    required this.onBackground,
    required this.onSurface,
    required this.onAlertDialog,
  });

  const AppOnSurfaceColor.same(Color color)
      : onPrimary = color,
        onBackground = color,
        onSurface = color,
        onAlertDialog = color;
}

class ColorSchemeData {
  final Brightness brightness;
  final Brightness cardPageAppBarBrightness;
  final SystemUiOverlayStyle systemUiOverlayStyle;
  final Color primary;
  final Color secondary;
  final AppOnSurfaceColor normalText;
  final AppOnSurfaceColor label;
  final Color error;
  final Color background;
  final Color cardBackground;
  final Color underSurfaceBackground;
  final Color priceWentUp;
  final Color priceFell;
  final Color awaiting;
  final Color dotActive;
  final Color dotInactive;
  final Color tagBorder;
  final Color divider;
  final Color tagsFieldBackground;
  final Color tagCorrectBorder;
  final Color tagWrongBorder;
  final IconThemeData iconThemeData;
  final IconThemeData onSurfaceAppBarIconThemeData;
  final Color qrCodeBoxForeground;
  final Color qrCodeBoxBackground;
  final Color textInputTextColor;
  final Color emptyCryptoIconBackground;
  final Color dialogBackgroundColor;

//  final AppOnSurfaceColor primarySplash;
//  final AppOnSurfaceColor primaryHighlight;

  const ColorSchemeData({
    required this.brightness,
    required this.systemUiOverlayStyle,
    required this.primary,
    required this.secondary,
    required this.normalText,
    required this.label,
    required this.background,
    required this.error,
    required this.cardBackground,
    required this.underSurfaceBackground,
    required this.priceWentUp,
    required this.priceFell,
    required this.awaiting,
    required this.dotActive,
    required this.dotInactive,
    required this.tagBorder,
    required this.divider,
    required this.tagCorrectBorder,
    required this.tagWrongBorder,
    required this.tagsFieldBackground,
    required this.cardPageAppBarBrightness,
    required this.iconThemeData,
    required this.onSurfaceAppBarIconThemeData,
    required this.qrCodeBoxForeground,
    required this.qrCodeBoxBackground,
    required this.textInputTextColor,
    required this.emptyCryptoIconBackground,
    required this.dialogBackgroundColor,
  });

  ColorSchemeData copyWith({
    Brightness? brightness,
    Brightness? cardPageAppBarBrightness,
    SystemUiOverlayStyle? systemUiOverlayStyle,
    Color? primary,
    Color? secondary,
    AppOnSurfaceColor? normalText,
    AppOnSurfaceColor? label,
    Color? background,
    Color? error,
    Color? cardBackground,
    Color? underSurfaceBackground,
    Color? priceWentUp,
    Color? priceFell,
    Color? awaiting,
    Color? dotActive,
    Color? dotInactive,
    Color? tagBorder,
    Color? divider,
    Color? tagsFieldBackground,
    Color? tagCorrectBorder,
    Color? tagWrongBorder,
    IconThemeData? iconThemeData,
    IconThemeData? onSurfaceAppBarIconThemeData,
    Color? qrCodeBoxForeground,
    Color? qrCodeBoxBackground,
    Color? textInputTextColor,
    Color? emptyCryptoIconBackground,
    Color? dialogBackgroundColor,
  }) =>
      ColorSchemeData(
        brightness: brightness ?? this.brightness,
        cardPageAppBarBrightness: cardPageAppBarBrightness ?? this.cardPageAppBarBrightness,
        systemUiOverlayStyle: systemUiOverlayStyle ?? this.systemUiOverlayStyle,
        primary: primary ?? this.primary,
        secondary: secondary ?? this.secondary,
        normalText: normalText ?? this.normalText,
        label: label ?? this.label,
        background: background ?? this.background,
        cardBackground: cardBackground ?? this.cardBackground,
        underSurfaceBackground: underSurfaceBackground ?? this.underSurfaceBackground,
        priceWentUp: priceWentUp ?? this.priceWentUp,
        priceFell: priceFell ?? this.priceFell,
        awaiting: awaiting ?? this.awaiting,
        dotActive: dotActive ?? this.dotActive,
        dotInactive: dotInactive ?? this.dotInactive,
        tagBorder: tagBorder ?? this.tagBorder,
        divider: divider ?? this.divider,
        tagsFieldBackground: tagsFieldBackground ?? this.tagsFieldBackground,
        tagCorrectBorder: tagCorrectBorder ?? this.tagCorrectBorder,
        tagWrongBorder: tagWrongBorder ?? this.tagWrongBorder,
        iconThemeData: iconThemeData ?? this.iconThemeData,
        onSurfaceAppBarIconThemeData:
            onSurfaceAppBarIconThemeData ?? this.onSurfaceAppBarIconThemeData,
        qrCodeBoxForeground: qrCodeBoxForeground ?? this.qrCodeBoxForeground,
        qrCodeBoxBackground: qrCodeBoxBackground ?? this.qrCodeBoxBackground,
        error: error ?? this.error,
        textInputTextColor: textInputTextColor ?? this.textInputTextColor,
        emptyCryptoIconBackground: emptyCryptoIconBackground ?? this.emptyCryptoIconBackground,
        dialogBackgroundColor: dialogBackgroundColor ?? this.dialogBackgroundColor,
      );
}

class AppColorScheme extends InheritedWidget {
  final ColorSchemeData colors;

  const AppColorScheme(this.colors, {required Widget child}) : super(child: child);

  static AppColorScheme of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}

class AppColorSchemeOverride extends StatelessWidget {
  final Widget child;
  final ColorSchemeData colors;

  const AppColorSchemeOverride({
    @override required this.colors,
    @override required this.child,
    Key? key,
  }) : super(key: key);

  static AppColorScheme of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }

  @override
  Widget build(BuildContext context) {
    return AppColorScheme(
      colors,
      child: Theme(
        data: ThemeData(iconTheme: colors.iconThemeData),
        child: child,
      ),
    );
  }
}
