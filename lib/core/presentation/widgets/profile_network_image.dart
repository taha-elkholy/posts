import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:social_task/utilities/constants/app_colors.dart';
import 'package:social_task/utilities/constants/app_sizes.dart';

class ProfileNetworkImage extends StatelessWidget {
  const ProfileNetworkImage({
    Key? key,
    required this.url,
    this.width = double.infinity,
    this.height = double.infinity,
  }) : super(key: key);
  final String url;

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      clipBehavior: Clip.antiAlias,
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: url,
        placeholder: (context, url) => const Center(
          child: SizedBox(
            width: AppSizes.progressIndicatorWidth,
            height: AppSizes.progressIndicatorWidth,
            child: CircularProgressIndicator(color: AppColors.kPrimaryColor),
          ),
        ),
        errorWidget: (context, url, error) => _placeholder(),
      ),
    );
  }

  Widget _placeholder() {
    return const CircleAvatar(
      backgroundColor: AppColors.kLightBlueColor,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Icon(
          Icons.person,
          size: AppSizes.avatarWidth,
          color: AppColors.kWhiteColor,
        ),
      ),
    );
  }
}
