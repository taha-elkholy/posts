import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_task/features/auth/presentation/widgets/login/login_mobile.dart';
import 'package:social_task/features/auth/presentation/widgets/login/login_tablet.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const LoginTablet();
        }
        return const LoginMobile();
      },
    );
  }
}
