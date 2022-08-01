import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/core/domain/entities/user_entity.dart';
import 'package:social_task/core/presentation/pages/home/cubit/home_cubit.dart';
import 'package:social_task/core/presentation/pages/home/cubit/home_states.dart';
import 'package:social_task/core/presentation/widgets/profile_network_image.dart';
import 'package:social_task/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:social_task/features/auth/presentation/cubit/auth_states.dart';
import 'package:social_task/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:social_task/features/profile/presentation/cubit/profile_states.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:social_task/utilities/constants/app_colors.dart';
import 'package:social_task/utilities/constants/app_sizes.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(builder: (context, state) {
      var cubit = BlocProvider.of<HomeCubit>(context);
      return Drawer(
          child: ListView(
        children: [
          BlocBuilder<ProfileCubit, ProfileStates>(builder: (context, state) {
            return DrawerHeader(
              decoration: const BoxDecoration(color: AppColors.kBlueColor),
              child: state.maybeWhen(
                  loaded: (user) => _Header(user: user),
                  orElse: () => const SizedBox.shrink()),
            );
          }),
          _DrawerItem(
            icon: CupertinoIcons.home,
            title: S.current.main,
            onPressed: () {
              // this tab animate to index 0 if the tab bar exist
              if (cubit.currentPageIndex == 1) {
                cubit.tabController.animateTo(0);
              }
              // if the current index  == 2 tab bar not exist and tab controller can not animate
              // so change the page index itself
              if (cubit.currentPageIndex == 2) {
                cubit.changeHomePage(index: 0);
                cubit.tabController.animateTo(0);
              }
            },
          ),
          _DrawerItem(
            icon: Icons.person,
            title: S.current.profile,
            onPressed: () {
              if (cubit.currentPageIndex == 0) {
                cubit.tabController.animateTo(1);
              }
              if (cubit.currentPageIndex == 2) {
                cubit.changeHomePage(index: 1);
                cubit.tabController.animateTo(1);
              }
            },
          ),
          _DrawerItem(
            icon: Icons.bookmark,
            title: S.current.saved,
            onPressed: () {
              if (cubit.currentPageIndex != 2) {
                cubit.changeHomePage(index: 2);
              }
            },
          ),
          BlocBuilder<AuthCubit, AuthStates>(builder: (context, state) {
            return _DrawerItem(
              icon: Icons.power_settings_new,
              title: S.current.logout,
              onPressed: () {
                BlocProvider.of<AuthCubit>(context).logout();
              },
            );
          }),
        ],
      ));
    });
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key, required this.user}) : super(key: key);
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: AppSizes.avatarWidth,
          height: AppSizes.avatarWidth,
          child: ProfileNetworkImage(
            url: user.image,
          ),
        ),
        const SizedBox(
          height: AppSizes.defaultSizedBoxSpace,
        ),
        FittedBox(
          child: Text(
            '${user.firstName} ${user.lastName}',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: AppColors.kWhiteColor,
                fontSize: AppSizes.buttonTextSize),
          ),
        ),
      ],
    );
  }
}

class _DrawerItem extends StatelessWidget {
  const _DrawerItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.of(context).pop();
        onPressed();
      },
    );
  }
}
