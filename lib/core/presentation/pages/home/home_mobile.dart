import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/core/presentation/pages/home/cubit/home_cubit.dart';
import 'package:social_task/core/presentation/pages/home/cubit/home_states.dart';
import 'package:social_task/core/presentation/widgets/app_drawer.dart';
import 'package:social_task/di/injectable.dart';
import 'package:social_task/features/posts/presentation/cubit/post_cubit.dart';
import 'package:social_task/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:social_task/utilities/constants/app_colors.dart';
import 'package:social_task/utilities/constants/app_sizes.dart';
import 'package:social_task/utilities/locales/presentation/bloc/locale_cubit/locale_cubit.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<HomeCubit>()..initController(tickerProvider: this),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => getIt<ProfileCubit>()..getUserData(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => getIt<PostCubit>()..createLocaleDatabase(),
        ),
      ],
      child: BlocBuilder<HomeCubit, HomeStates>(
        builder: (context, state) {
          var cubit = BlocProvider.of<HomeCubit>(context);
          return DefaultTabController(
            length: 3,
            initialIndex: cubit.currentPageIndex,
            child: WillPopScope(
              onWillPop: () async {
                switch (cubit.currentPageIndex) {
                  case 0:
                    SystemNavigator.pop();
                    break;
                  case 1:
                    cubit.tabController.animateTo(0);
                    break;
                  default:
                    cubit.changeHomePage(index: 0);
                    cubit.tabController.animateTo(0);
                    break;
                }
                return false;
              },
              child: Scaffold(
                appBar: AppBar(
                  title: Text(cubit.homeTitles[cubit.currentPageIndex]),
                  bottom: (cubit.currentPageIndex != 2)
                      ? TabBar(
                          controller: cubit.tabController,
                          indicatorColor: AppColors.kWhiteColor,
                          indicatorWeight: AppSizes.defaultBorderWidth,
                          onTap: (index) {
                            cubit.tabController.animateTo(index);
                          },
                          tabs: [
                            Tab(
                              text: S.current.main,
                            ),
                            Tab(
                              text: S.current.profile,
                            ),
                          ],
                        )
                      : null,
                  actions: [
                    IconButton(
                        onPressed: () {
                          BlocProvider.of<LocaleCubit>(context)
                              .changeLocalization();
                        },
                        icon: const Icon(Icons.language))
                  ],
                ),
                drawer: const AppDrawer(),
                body: (cubit.currentPageIndex != 2)
                    ? TabBarView(
                        controller: cubit.tabController,
                        children: [
                          cubit.homePages[0],
                          cubit.homePages[1],
                        ],
                      )
                    : cubit.homePages[cubit.currentPageIndex],
              ),
            ),
          );
        },
      ),
    );
  }
}
