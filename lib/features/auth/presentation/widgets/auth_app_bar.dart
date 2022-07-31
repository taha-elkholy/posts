import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_task/utilities/constants/app_colors.dart';
import 'package:social_task/utilities/constants/app_sizes.dart';
import 'package:social_task/utilities/constants/constants.dart';

AppBar authAppBar({required String title}) => AppBar(
      title: Text(title),
      centerTitle: true,
      elevation: AppSizes.appBarZeroElevation,
      backgroundColor: AppColors.kScaffoldBGColor,
      iconTheme: const IconThemeData(color: AppColors.kBlackColor),
      titleTextStyle: const TextStyle(
        fontFamily: Constants.fontFamily,
        color: AppColors.kBlueColor,
        fontSize: AppSizes.appBarTextSize,
        fontWeight: FontWeight.bold,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.kScaffoldBGColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
