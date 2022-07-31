import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/presentation/pages/home/cubit/home_states.dart';
import 'package:social_task/features/posts/presentation/pages/posts_page.dart';
import 'package:social_task/features/posts/presentation/pages/saved_posts_page.dart';
import 'package:social_task/features/profile/presentation/pages/profile_page.dart';
import 'package:social_task/generated/l10n.dart';

@injectable
class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(const HomeStates.initial());
  int currentPageIndex = 0;

  List<Widget> homePages = const [
    PostsPage(),
    ProfilePage(),
    SavedPostsPage(),
  ];

  List<String> homeTitles = [
    S.current.main,
    S.current.profile,
    S.current.saved,
  ];

  late TabController tabController;

  void initController({required TickerProvider tickerProvider}) {
    tabController = TabController(length: 2, vsync: tickerProvider);
    tabController.addListener(
      () {
        changeHomePage(index: tabController.index);
      },
    );
  }

  void changeHomePage({required int index}) {
    currentPageIndex = index;
    emit(HomeStates.changed(currentIndex: index));
  }

  @override
  Future<void> close() {
    tabController.dispose();
    return super.close();
  }
}
