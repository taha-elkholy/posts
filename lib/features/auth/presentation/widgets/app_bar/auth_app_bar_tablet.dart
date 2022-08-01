import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_task/utilities/constants/app_colors.dart';
import 'package:social_task/utilities/constants/app_sizes_tablet.dart';
import 'package:social_task/utilities/constants/constants.dart';

AppBar authAppBarTablet({required String title}) => AppBar(
      title: Text(title),
      centerTitle: true,
      elevation: AppSizesTablet.appBarZeroElevation,
      backgroundColor: AppColors.kScaffoldBGColor,
      iconTheme: const IconThemeData(
          color: AppColors.kBlackColor, size: AppSizesTablet.iconsSized),
      titleTextStyle: const TextStyle(
        fontFamily: Constants.fontFamily,
        color: AppColors.kBlueColor,
        fontSize: AppSizesTablet.appBarTextSize,
        fontWeight: FontWeight.bold,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.kScaffoldBGColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
