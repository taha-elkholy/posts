import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_task/features/profile/presentation/widgets/profile_mobile.dart';
import 'package:social_task/features/profile/presentation/widgets/profile_tablet.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const ProfileTablet();
        }
        return const ProfileMobile();
      },
    );
  }
}
