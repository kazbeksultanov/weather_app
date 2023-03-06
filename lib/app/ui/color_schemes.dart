import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

class AppColorSchemes {
  static ColorSchemeData dark() => ColorSchemeData(
        brightness: Brightness.dark,
        cardPageAppBarBrightness: Brightness.dark,
        systemUiOverlayStyle: const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
        primary: AppColors.lightGreen1BD099,
        secondary: AppColors.darkBlue1A1B35,
        normalText: const AppOnSurfaceColor(
          onPrimary: AppColors.darkBlue1A1B35,
          onBackground: AppColors.whiteFFFFFF,
          onSurface: AppColors.whiteFFFFFF,
          onAlertDialog: AppColors.darkBlue1A1B35,
        ),
        label: const AppOnSurfaceColor(
          onPrimary: AppColors.darkBlue1A1B35,
          onBackground: AppColors.grey989BB9,
          onSurface: AppColors.grey989BB9,
          onAlertDialog: AppColors.darkBlue1A1B35,
        ),
        underSurfaceBackground: AppColors.darkBlue1A1B35,
        background: AppColors.darkBlue1A1B35,
        cardBackground: AppColors.darkBlue282C4E,
        priceWentUp: AppColors.lightGreen1BD099,
        priceFell: AppColors.pinkE55B63,
        awaiting: AppColors.braunF8B125,
        dotActive: AppColors.lightGreen1BD099,
        dotInactive: AppColors.grey989BB9,
        tagBorder: AppColors.grey989BB9.withOpacity(0.5),
        divider: AppColors.grey989BB9.withOpacity(0.2),
        tagsFieldBackground: AppColors.grey989BB9.withOpacity(0.08),
        tagCorrectBorder: AppColors.lightGreen1BD099,
        tagWrongBorder: AppColors.braunF8B125,
        iconThemeData: const IconThemeData(
          color: AppColors.whiteFFFFFF,
        ),
        onSurfaceAppBarIconThemeData: const IconThemeData(
          color: AppColors.whiteFFFFFF,
        ),
        qrCodeBoxForeground: AppColors.darkBlue1A1B35,
        qrCodeBoxBackground: AppColors.whiteFFFFFF,
        error: AppColors.pinkFF7D85,
        textInputTextColor: AppColors.whiteFFFFFF,
        emptyCryptoIconBackground: AppColors.grey989BB9,
        dialogBackgroundColor: AppColors.whiteFFFFFF,
      );

  static ColorSchemeData light() => ColorSchemeData(
        brightness: Brightness.light,
        cardPageAppBarBrightness: Brightness.light,
        systemUiOverlayStyle: const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
        primary: AppColors.lightGreen1BD099,
        secondary: AppColors.darkBlue0A0C1F,
        normalText: const AppOnSurfaceColor(
          onPrimary: AppColors.whiteFFFFFF,
          onBackground: AppColors.darkBlue0A0C1F,
          onSurface: AppColors.darkBlue0A0C1F,
          onAlertDialog: AppColors.whiteFFFFFF,
        ),
        label: const AppOnSurfaceColor(
          onPrimary: AppColors.darkBlue0A0C1F,
          onBackground: AppColors.grey737C8A,
          onSurface: AppColors.greyA2ABB9,
          onAlertDialog: AppColors.darkBlue0A0C1F,
        ),
        underSurfaceBackground: AppColors.darkBlue0A0C1F,
        background: AppColors.whiteFFFFFF,
        cardBackground: AppColors.whiteFFFFFF,
        priceWentUp: AppColors.lightGreen1BD099,
        priceFell: AppColors.pinkFF7D85,
        awaiting: AppColors.braunF8B125,
        dotActive: AppColors.lightGreen1BD099,
        dotInactive: AppColors.greyA2ABB9,
        tagBorder: AppColors.greyA2ABB9.withOpacity(0.5),
        divider: AppColors.greyA2ABB9.withOpacity(0.2),
        tagsFieldBackground: AppColors.greyA2ABB9.withOpacity(0.08),
        tagCorrectBorder: AppColors.lightGreen1BD099,
        tagWrongBorder: AppColors.braunF8B125,
        iconThemeData: const IconThemeData(
          color: AppColors.darkBlue0A0C1F,
        ),
        onSurfaceAppBarIconThemeData: const IconThemeData(
          color: AppColors.whiteFFFFFF,
        ),
        qrCodeBoxForeground: AppColors.whiteFFFFFF,
        qrCodeBoxBackground: AppColors.darkBlue0A0C1F,
        error: AppColors.pinkFF7D85,
        textInputTextColor: AppColors.darkBlue0A0C1F,
        emptyCryptoIconBackground: AppColors.darkBlue0A0C1F,
        dialogBackgroundColor: AppColors.grey989BB9,
      );
}
