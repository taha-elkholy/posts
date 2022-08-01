import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_task/features/posts/presentation/widgets/add_post_dialog/add_post_mobile.dart';
import 'package:social_task/features/posts/presentation/widgets/add_post_dialog/add_post_tablet.dart';

class AddPostDialog extends StatelessWidget {
  const AddPostDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const AddPostTablet();
        }
        return const AddPostMobile();
      },
    );
  }
}
