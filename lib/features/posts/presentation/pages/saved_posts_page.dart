import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/core/presentation/widgets/app_loading.dart';
import 'package:social_task/features/posts/presentation/cubit/post_cubit.dart';
import 'package:social_task/features/posts/presentation/cubit/post_states.dart';
import 'package:social_task/features/posts/presentation/widgets/posts_list.dart';
import 'package:social_task/utilities/enums/posts_source_enum.dart';
import 'package:social_task/utilities/utilities.dart';

class SavedPostsPage extends StatefulWidget {
  const SavedPostsPage({Key? key}) : super(key: key);

  @override
  State<SavedPostsPage> createState() => _SavedPostsPageState();
}

class _SavedPostsPageState extends State<SavedPostsPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<PostCubit>(context).getLocalPosts();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostCubit, PostStates>(
      listener: (context, state) {
        state.whenOrNull(
          liveUpdated: () {
            BlocProvider.of<PostCubit>(context).getLivePosts();
          },
          localUnSaved: () {
            BlocProvider.of<PostCubit>(context).getLocalPosts();
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
              localLoading: () => const AppLoading(),
              localLoaded: (posts) =>
                  PostsList(posts: posts, source: PostsSource.local),
              orElse: () => const SizedBox.shrink()),
        );
      },
    );
  }
}
