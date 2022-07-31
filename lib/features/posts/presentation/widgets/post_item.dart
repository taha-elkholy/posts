import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/core/presentation/widgets/post_network_image.dart';
import 'package:social_task/core/presentation/widgets/profile_network_image.dart';
import 'package:social_task/features/posts/domain/entities/post.dart';
import 'package:social_task/features/posts/presentation/cubit/post_cubit.dart';
import 'package:social_task/utilities/constants/app_colors.dart';
import 'package:social_task/utilities/constants/app_sizes.dart';

class PostItem extends StatelessWidget {
  const PostItem({Key? key, required this.post}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.cardContentPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                    width: AppSizes.avatarWidth,
                    height: AppSizes.avatarWidth,
                    child: ProfileNetworkImage(url: post.userImageUrl)),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      BlocProvider.of<PostCubit>(context)
                          .shareThePost(context: context, post: post);
                    },
                    icon: const Icon(Icons.share)),
                IconButton(
                    onPressed: () {
                      BlocProvider.of<PostCubit>(context)
                          .localSaveUnSave(post: post);
                    },
                    icon: Icon(
                      Icons.bookmark,
                      color: post.isSaved
                          ? AppColors.kBlueColor
                          : AppColors.kLightBlueColor,
                    )),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: AppSizes.cardContentPadding),
                      child: IconButton(
                          onPressed: () {
                            BlocProvider.of<PostCubit>(context)
                                .likeAndDislikeAPost(post: post);
                          },
                          icon: Icon(
                            CupertinoIcons.hand_thumbsup_fill,
                            color: post.isLiked
                                ? AppColors.kBlueColor
                                : AppColors.kLightBlueColor,
                          )),
                    ),
                    if (post.likes.isNotEmpty)
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: AppSizes.likesSizedBoxWidth,
                          height: AppSizes.likesSizedBoxWidth,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(AppSizes.smallRadius),
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
              height: AppSizes.defaultSizedBoxSpace,
            ),
            PostNetworkImage(url: post.imageUrl),
            const SizedBox(
              height: AppSizes.defaultSizedBoxSpace,
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
