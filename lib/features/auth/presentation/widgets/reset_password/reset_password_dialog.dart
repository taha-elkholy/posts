import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_task/features/auth/presentation/widgets/reset_password/reset_password_mobile.dart';
import 'package:social_task/features/auth/presentation/widgets/reset_password/reset_password_tablet.dart';

class ResetPasswordDialog extends StatelessWidget {
  const ResetPasswordDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const ResetPasswordTablet();
        }
        return const ResetPasswordMobile();
      },
    );
  }
}
