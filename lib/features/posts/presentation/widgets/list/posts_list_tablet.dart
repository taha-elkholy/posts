import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/core/presentation/widgets/empty/empty_list.dart';
import 'package:social_task/features/posts/domain/entities/post.dart';
import 'package:social_task/features/posts/presentation/cubit/post_cubit.dart';
import 'package:social_task/features/posts/presentation/widgets/post_item/post_item_tablet.dart';
import 'package:social_task/utilities/constants/app_colors.dart';
import 'package:social_task/utilities/constants/app_sizes_tablet.dart';
import 'package:social_task/utilities/enums/posts_source_enum.dart';

class PostsListTablet extends StatelessWidget {
  const PostsListTablet({Key? key, required this.posts, required this.source})
      : super(key: key);
  final List<Post> posts;
  final PostsSource source;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RefreshIndicator(
        color: AppColors.kPrimaryColor,
        onRefresh: () => (source == PostsSource.live)
            ? BlocProvider.of<PostCubit>(context).getLivePosts()
            : BlocProvider.of<PostCubit>(context).getLocalPosts(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: ListView(
            children: [
              ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(AppSizesTablet.pagePadding),
                primary: false,
                shrinkWrap: true,
                itemCount: posts.length,
                separatorBuilder: (context, index) => const SizedBox(
                  height: AppSizesTablet.defaultSizedBoxSpace,
                ),
                itemBuilder: (context, index) =>
                    PostItemTablet(post: posts[index]),
              ),
              if (posts.isEmpty) const EmptyList(),
            ],
          ),
        ),
      ),
    );
  }
}
