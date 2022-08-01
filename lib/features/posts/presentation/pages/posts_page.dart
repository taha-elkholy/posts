import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_task/features/posts/presentation/widgets/main/posts_mobile.dart';
import 'package:social_task/features/posts/presentation/widgets/main/posts_tablet.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const PostsTablet();
        }
        return const PostsMobile();
      },
    );
  }
}
