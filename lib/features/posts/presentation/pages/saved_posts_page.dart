import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_task/features/posts/presentation/widgets/saved/saved_posts_mobile.dart';
import 'package:social_task/features/posts/presentation/widgets/saved/saved_posts_tablet.dart';

class SavedPostsPage extends StatelessWidget {
  const SavedPostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const SavedPostsTablet();
        }
        return const SavedPostsMobile();
      },
    );
  }
}
