import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/core/presentation/widgets/post_network_image.dart';
import 'package:social_task/core/presentation/widgets/profile_network_image.dart';
import 'package:social_task/features/posts/domain/entities/post.dart';
import 'package:social_task/features/posts/presentation/cubit/post_cubit.dart';
import 'package:social_task/utilities/constants/app_colors.dart';
import 'package:social_task/utilities/constants/app_sizes_tablet.dart';

class PostItemTablet extends StatelessWidget {
  const PostItemTablet({Key? key, required this.post}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSizesTablet.cardContentPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                    width: AppSizesTablet.avatarWidth,
                    height: AppSizesTablet.avatarWidth,
                    child: ProfileNetworkImage(url: post.userImageUrl)),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    BlocProvider.of<PostCubit>(context)
                        .shareThePost(context: context, post: post);
                  },
                  icon: const Icon(
                    Icons.share,
                    size: AppSizesTablet.iconsSized,
                  ),
                ),
                const SizedBox(
                  width: AppSizesTablet.smallSizedBoxSpace,
                ),
                IconButton(
                  onPressed: () {
                    BlocProvider.of<PostCubit>(context)
                        .localSaveUnSave(post: post);
                  },
                  icon: Icon(
                    Icons.bookmark,
                    size: AppSizesTablet.iconsSized,
                    color: post.isSaved
                        ? AppColors.kBlueColor
                        : AppColors.kLightBlueColor,
                  ),
                ),
                const SizedBox(
                  width: AppSizesTablet.smallSizedBoxSpace,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: AppSizesTablet.cardContentPadding),
                      child: IconButton(
                        onPressed: () {
                          BlocProvider.of<PostCubit>(context)
                              .likeAndDislikeAPost(post: post);
                        },
                        icon: Icon(
                          CupertinoIcons.hand_thumbsup_fill,
                          size: AppSizesTablet.iconsSized,
                          color: post.isLiked
                              ? AppColors.kBlueColor
                              : AppColors.kLightBlueColor,
                        ),
                      ),
                    ),
                    if (post.likes.isNotEmpty)
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: AppSizesTablet.likesSizedBoxWidth,
                          height: AppSizesTablet.likesSizedBoxWidth,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  AppSizesTablet.smallRadius),
                              color: AppColors.kScaffoldBGColor,
                            ),
                            child: FittedBox(
                              child: Text(
                                '${post.likes.length}',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          ),
                        ),
                      )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: AppSizesTablet.defaultSizedBoxSpace,
            ),
            SizedBox(
                height: AppSizesTablet.cardImageHeight,
                child: PostNetworkImage(url: post.imageUrl)),
            const SizedBox(
              height: AppSizesTablet.defaultSizedBoxSpace,
            ),
            Text(
              post.content,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
      ),
    );
  }
}
