import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:social_task/utilities/constants/app_colors.dart';
import 'package:social_task/utilities/constants/app_sizes.dart';
import 'package:social_task/utilities/constants/assets.dart';

class PostNetworkImage extends StatelessWidget {
  const PostNetworkImage({
    Key? key,
    required this.url,
  }) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppSizes.cardImageHeight,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSizes.defaultRadius),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: AppColors.kScaffoldBGColor,
          ),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: url,
            placeholder: (context, url) => const Center(
              child: SizedBox(
                child:
                    CircularProgressIndicator(color: AppColors.kPrimaryColor),
              ),
            ),
            errorWidget: (context, url, error) => _placeholder(),
          ),
        ),
      ),
    );
  }

  Widget _placeholder() {
    return SizedBox(
      width: double.infinity,
      height: AppSizes.cardImageHeight,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSizes.defaultRadius),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: const DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.kScaffoldBGColor,
          ),
          child: Image(
            image: AssetImage(AppAssets.profileBG),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
