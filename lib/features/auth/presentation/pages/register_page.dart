import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_task/features/auth/presentation/widgets/register/register_mobile.dart';
import 'package:social_task/features/auth/presentation/widgets/register/register_tablet.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const RegisterTablet();
        }
        return const RegisterMobile();
      },
    );
  }
}
