import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_task/features/auth/presentation/widgets/app_bar/auth_app_bar_mobile.dart';
import 'package:social_task/features/auth/presentation/widgets/app_bar/auth_app_bar_tablet.dart';

AppBar authAppBar(
        {required DeviceScreenType screenType, required String title}) =>
    screenType == DeviceScreenType.tablet
        ? authAppBarTablet(title: title)
        : authAppBarMobile(title: title);
