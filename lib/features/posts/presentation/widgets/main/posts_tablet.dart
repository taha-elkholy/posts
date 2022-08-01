import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/core/presentation/widgets/app_loading.dart';
import 'package:social_task/features/posts/presentation/cubit/post_cubit.dart';
import 'package:social_task/features/posts/presentation/cubit/post_states.dart';
import 'package:social_task/features/posts/presentation/widgets/add_post_dialog/add_post_dialog.dart';
import 'package:social_task/features/posts/presentation/widgets/list/posts_list_tablet.dart';
import 'package:social_task/utilities/constants/app_colors.dart';
import 'package:social_task/utilities/enums/posts_source_enum.dart';
import 'package:social_task/utilities/utilities.dart';

class PostsTablet extends StatefulWidget {
  const PostsTablet({Key? key}) : super(key: key);

  @override
  State<PostsTablet> createState() => _PostsTabletState();
}

class _PostsTabletState extends State<PostsTablet> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<PostCubit>(context).getLivePosts();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostCubit, PostStates>(
      listener: (context, state) {
        state.whenOrNull(
          liveAdded: () {
            BlocProvider.of<PostCubit>(context).getLivePosts();
          },
          liveUpdated: () {
            BlocProvider.of<PostCubit>(context).getLivePosts();
          },
          localSaved: () {
            BlocProvider.of<PostCubit>(context).getLivePosts();
          },
          localUnSaved: () {
            BlocProvider.of<PostCubit>(context).getLivePosts();
          },
          liveError: (error) {
            showSnackBar(context: context, content: error);
          },
          localError: (error) {
            showSnackBar(context: context, content: error);
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: state.maybeWhen(
              liveLoading: () => const AppLoading(),
              liveLoaded: (posts) =>
                  PostsListTablet(posts: posts, source: PostsSource.live),
              orElse: () => const SizedBox.shrink()),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierColor: AppColors.kLightGreyColor,
                builder: (_) => BlocProvider<PostCubit>.value(
                  value: BlocProvider.of<PostCubit>(context),
                  child: const AddPostDialog(),
                ),
              );
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
