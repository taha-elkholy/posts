import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/core/domain/entities/upload_image_param.dart';
import 'package:social_task/core/domain/entities/user_entity.dart';
import 'package:social_task/core/presentation/widgets/app_floating_button.dart';
import 'package:social_task/core/presentation/widgets/app_loading.dart';
import 'package:social_task/core/presentation/widgets/profile_network_image.dart';
import 'package:social_task/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:social_task/features/profile/presentation/cubit/profile_states.dart';
import 'package:social_task/features/profile/presentation/widgets/profile_image.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:social_task/utilities/constants/api_path.dart';
import 'package:social_task/utilities/constants/app_colors.dart';
import 'package:social_task/utilities/constants/app_sizes.dart';
import 'package:social_task/utilities/constants/assets.dart';
import 'package:social_task/utilities/utilities.dart';

class ProfileMobile extends StatelessWidget {
  const ProfileMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileStates>(
        listener: (context, state) {
      state.whenOrNull(
        updated: () => BlocProvider.of<ProfileCubit>(context).getUserData(),
        error: (error) {
          showSnackBar(context: context, content: error);
          BlocProvider.of<ProfileCubit>(context).getUserData();
        },
      );
    }, builder: (context, state) {
      return state.maybeWhen(
          loading: () => const AppLoading(),
          loaded: (user) => ProfileBody(user: user),
          orElse: () => const SizedBox.shrink());
    });
  }
}

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key, required this.user}) : super(key: key);
  final UserEntity user;

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  File? userImage;

  @override
  void dispose() {
    if (userImage != null) {
      userImage = null;
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height * AppSizes.profileWidgetHeightPercentage,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: size.height * AppSizes.profileBGImageHeightPercentage,
                  child: const Image(
                    image: AssetImage(AppAssets.profileBG),
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: StatefulBuilder(builder: (context, stateSetter) {
                    return Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        SizedBox(
                          width: size.height *
                              AppSizes.profileImageHeightPercentage,
                          height: size.height *
                              AppSizes.profileImageHeightPercentage,
                          child: (userImage == null)
                              ? ProfileNetworkImage(url: widget.user.image)
                              : StatefulBuilder(
                                  builder: (context, stateSetter) {
                                  return ProfileImage(profileImage: userImage!);
                                }),
                        ),
                        IconButton(
                          onPressed: () {
                            pickImage().then((image) {
                              if (image != null) {
                                stateSetter(() {
                                  userImage = image;
                                });
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.camera_alt,
                            color: AppColors.kSecondaryColor,
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: AppSizes.largeSizedBoxSpace,
          ),
          FittedBox(
            child: Text(
              '${widget.user.firstName} ${widget.user.lastName}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          FittedBox(
            child: Text(
              widget.user.email,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: AppColors.kLightBlueColor),
            ),
          ),
          const SizedBox(
            height: AppSizes.largeSizedBoxSpace,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppFloatingButton(
                  onPressed: () {
                    if (userImage != null) {
                      final param = UploadImageParam(
                          image: userImage!,
                          path: APIPath.profilesImages(widget.user.uid));
                      BlocProvider.of<ProfileCubit>(context)
                          .uploadProfileImage(user: widget.user, param: param);
                    } else {
                      showSnackBar(
                          context: context, content: S.current.noThingUpdated);
                    }
                  },
                  icon: Icons.edit,
                  label: S.current.edit),
              AppFloatingButton(
                  onPressed: () {
                    showSnackBar(
                        context: context, content: S.current.notImplemented);
                  },
                  icon: Icons.settings,
                  label: S.current.settings),
              AppFloatingButton(
                  onPressed: () {
                    showSnackBar(
                        context: context, content: S.current.notImplemented);
                  },
                  icon: Icons.star,
                  label: S.current.favorites),
            ],
          )
        ],
      ),
    );
  }
}
