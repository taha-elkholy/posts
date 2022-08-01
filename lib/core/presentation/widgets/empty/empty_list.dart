import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_task/core/presentation/widgets/empty/empty_list_mobile.dart';
import 'package:social_task/core/presentation/widgets/empty/empty_list_tablet.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const EmptyListTablet();
        }
        return const EmptyListMobile();
      },
    );
  }
}
