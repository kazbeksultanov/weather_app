import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/app/ui/colors.dart';

class AppThemes {
  static ThemeData materialAppTheme(ColorSchemeData colorScheme) => ThemeData(
        brightness: colorScheme.brightness,
        canvasColor: AppColors.whiteFFFFFF,
        scaffoldBackgroundColor: colorScheme.background,
        primaryColor: AppColors.darkBlue0A0C1F,
        primaryColorDark: AppColors.darkBlue0A0C1F,
        colorScheme: ColorScheme(
          onPrimary: colorScheme.normalText.onSurface,
          error: colorScheme.error,
          primary: AppColors.lightGreen1BD099,
          background: colorScheme.background,
          onSecondary: AppColors.darkBlue0A0C1F,
          onError: colorScheme.error,
          primaryContainer: AppColors.lightGreen1BD099,
          secondaryContainer: AppColors.darkBlue0A0C1F,
          secondary: AppColors.lightGreen1BD099,
          surface: Colors.white,
          onSurface: Colors.white,
          brightness: colorScheme.brightness,
          onBackground: colorScheme.background,
        ).copyWith(background: colorScheme.background),
        dialogBackgroundColor: colorScheme.qrCodeBoxBackground,
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: AppColors.lightGreen1BD099,
          selectionHandleColor: AppColors.lightGreen1BD099,
        ),
        unselectedWidgetColor: AppColors.greyA2ABB9,
        disabledColor: AppColors.greyA2ABB9.withOpacity(0.2),
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.transparent,
          centerTitle: true,
          foregroundColor: colorScheme.normalText.onSurface,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: colorScheme.brightness,
            statusBarIconBrightness: colorScheme.brightness,
          ),
        ),
        iconTheme: colorScheme.iconThemeData,
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: AppColors.greyA2ABB9),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.greyA2ABB9),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.greyA2ABB9),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightGreen1BD099),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.pinkFF7D85),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.pinkFF7D85),
          ),
          errorStyle: TextStyle(
            color: AppColors.pinkFF7D85,
          ),
        ),
      );
}
