import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_task/utilities/constants/app_colors.dart';
import 'package:social_task/utilities/constants/app_sizes_tablet.dart';
import 'package:social_task/utilities/constants/constants.dart';

class AppThemesTablet {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.kScaffoldBGColor,
    primaryColor: AppColors.kPrimaryColor,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.kLightBlueColor,
      filled: true,
      contentPadding:
          const EdgeInsets.all(AppSizesTablet.textFieldContentPadding),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            AppSizesTablet.defaultRadius,
          ),
          borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizesTablet.defaultRadius),
          borderSide: BorderSide.none),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizesTablet.defaultRadius),
          borderSide: BorderSide.none),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizesTablet.defaultRadius),
          borderSide: BorderSide.none),
      disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizesTablet.defaultRadius),
          borderSide: BorderSide.none),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizesTablet.defaultRadius),
          borderSide: BorderSide.none),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.kSecondaryColor,
    ),
    dividerTheme: const DividerThemeData(
      color: AppColors.kLightGreyColor,
    ),
    iconTheme: const IconThemeData(
        color: AppColors.kLightBlueColor, size: AppSizesTablet.iconsSized),
    appBarTheme: const AppBarTheme(
      elevation: AppSizesTablet.appBarElevation,
      backgroundColor: AppColors.kAppBarColor,
      iconTheme: IconThemeData(
          color: AppColors.kWhiteColor, size: AppSizesTablet.iconsSized),
      titleTextStyle: TextStyle(
        fontFamily: Constants.fontFamily,
        color: AppColors.kWhiteColor,
        fontSize: AppSizesTablet.appBarTextSize,
        fontWeight: FontWeight.bold,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.kBlueColor,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: Constants.fontFamily,
        color: AppColors.kDrawerTextColor,
        fontSize: AppSizesTablet.defaultTextSize,
        fontWeight: FontWeight.bold,
      ),
      labelLarge: TextStyle(
        fontFamily: Constants.fontFamily,
        color: AppColors.kDarkGreyColor,
        fontSize: AppSizesTablet.defaultTextSize,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontFamily: Constants.fontFamily,
        color: AppColors.kBlueColor,
        fontSize: AppSizesTablet.defaultTextSize,
      ),
      bodySmall: TextStyle(
        fontFamily: Constants.fontFamily,
        color: AppColors.kBlueColor,
        fontSize: AppSizesTablet.defaultTextSize,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shadowColor: AppColors.kSecondaryColor,
        primary: AppColors.kPrimaryColor,
        textStyle: const TextStyle(
          fontFamily: Constants.fontFamily,
          color: AppColors.kWhiteColor,
          fontSize: AppSizesTablet.buttonTextSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        primary: AppColors.kPrimaryColor,
        textStyle: const TextStyle(
          fontFamily: Constants.fontFamily,
          color: AppColors.kPrimaryColor,
          fontSize: AppSizesTablet.buttonTextSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    listTileTheme: const ListTileThemeData(
      textColor: AppColors.kBlueColor,
      iconColor: AppColors.kBlueColor,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          side: const BorderSide(
            width: AppSizesTablet.defaultBorderWidth,
            color: AppColors.kPrimaryColor,
          ),
          textStyle: const TextStyle(
            fontFamily: Constants.fontFamily,
            color: AppColors.kPrimaryColor,
            fontSize: AppSizesTablet.defaultTextSize,
            fontWeight: FontWeight.bold,
          ),
          primary: AppColors.kPrimaryColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.kPrimaryColor,
    ),
    cardTheme: CardTheme(
      elevation: AppSizesTablet.cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizesTablet.defaultRadius),
      ),
      shadowColor: AppColors.kLightBlueColor,
      clipBehavior: Clip.antiAliasWithSaveLayer,
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: AppColors.kLightBlueColor,
      contentTextStyle: TextStyle(
        fontFamily: Constants.fontFamily,
        color: AppColors.kBlueColor,
        fontSize: AppSizesTablet.defaultTextSize,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
