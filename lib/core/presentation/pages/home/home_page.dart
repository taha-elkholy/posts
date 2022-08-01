import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_task/core/presentation/pages/home/home_mobile.dart';
import 'package:social_task/core/presentation/pages/home/home_tablet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const HomeTablet();
        }
        return const HomeMobile();
      },
    );
  }
}
