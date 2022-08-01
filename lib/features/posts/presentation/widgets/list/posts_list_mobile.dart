import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/core/presentation/widgets/empty/empty_list.dart';
import 'package:social_task/features/posts/domain/entities/post.dart';
import 'package:social_task/features/posts/presentation/cubit/post_cubit.dart';
import 'package:social_task/features/posts/presentation/widgets/post_item/post_item_mobile.dart';
import 'package:social_task/utilities/constants/app_colors.dart';
import 'package:social_task/utilities/constants/app_sizes.dart';
import 'package:social_task/utilities/enums/posts_source_enum.dart';

class PostsListMobile extends StatelessWidget {
  const PostsListMobile({Key? key, required this.posts, required this.source})
      : super(key: key);
  final List<Post> posts;
  final PostsSource source;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: AppColors.kPrimaryColor,
      onRefresh: () => (source == PostsSource.live)
          ? BlocProvider.of<PostCubit>(context).getLivePosts()
          : BlocProvider.of<PostCubit>(context).getLocalPosts(),
      child: ListView(
        children: [
          ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(AppSizes.pagePadding),
            primary: false,
            shrinkWrap: true,
            itemCount: posts.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: AppSizes.defaultSizedBoxSpace,
            ),
            itemBuilder: (context, index) => PostItemMobile(post: posts[index]),
          ),
          if (posts.isEmpty) const EmptyList(),
        ],
      ),
    );
  }
}
