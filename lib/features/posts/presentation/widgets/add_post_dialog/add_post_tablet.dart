import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/core/domain/entities/upload_image_param.dart';
import 'package:social_task/core/presentation/widgets/app_loading.dart';
import 'package:social_task/features/posts/domain/entities/post.dart';
import 'package:social_task/features/posts/presentation/cubit/post_cubit.dart';
import 'package:social_task/features/posts/presentation/cubit/post_states.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:social_task/utilities/constants/api_path.dart';
import 'package:social_task/utilities/constants/app_colors.dart';
import 'package:social_task/utilities/constants/app_sizes_tablet.dart';
import 'package:social_task/utilities/utilities.dart';

class AddPostTablet extends StatefulWidget {
  const AddPostTablet({
    Key? key,
  }) : super(key: key);

  @override
  State<AddPostTablet> createState() => _AddPostTabletState();
}

class _AddPostTabletState extends State<AddPostTablet> {
  File? postImage;
  final _formKey = GlobalKey<FormState>();
  final _contentController = TextEditingController();

  @override
  void dispose() {
    if (postImage != null) {
      postImage = null;
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostCubit, PostStates>(
      listener: (context, state) {
        state.whenOrNull(
          liveAdded: () => Navigator.of(context).pop(),
        );
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: AlertDialog(
            contentPadding:
                const EdgeInsets.all(AppSizesTablet.cardContentPadding),
            content: state.maybeWhen(
                liveLoading: () => const SizedBox(
                      height: AppSizesTablet.cardImageHeight,
                      child: AppLoading(),
                    ),
                liveError: (error) => SizedBox(
                      height: AppSizesTablet.cardImageHeight,
                      child: Center(
                        child: Text(
                          error,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                orElse: () => SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          StatefulBuilder(builder: (context, stateSetter) {
                            return SizedBox(
                              width: double.infinity,
                              height: AppSizesTablet.cardImageHeight,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    AppSizesTablet.defaultRadius),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                    color: AppColors.kScaffoldBGColor,
                                  ),
                                  child: (postImage != null)
                                      ? Image.file(
                                          postImage!,
                                          fit: BoxFit.cover,
                                        )
                                      : Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                pickImage().then((image) {
                                                  if (image != null) {
                                                    stateSetter(
                                                      () {
                                                        postImage = image;
                                                      },
                                                    );
                                                  }
                                                });
                                              },
                                              icon: const FittedBox(
                                                child: Icon(
                                                  Icons.camera_alt,
                                                  size: AppSizesTablet
                                                      .uploadImageIconSize,
                                                  color: AppColors
                                                      .kDrawerTextColor,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              S.current.uploadImage,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall,
                                            )
                                          ],
                                        ),
                                ),
                              ),
                            );
                          }),
                          const SizedBox(
                            height: AppSizesTablet.defaultSizedBoxSpace,
                          ),
                          TextFormField(
                            controller: _contentController,
                            maxLines: 2,
                            maxLength: 120,
                            style: Theme.of(context).textTheme.bodyLarge,
                            decoration: InputDecoration(
                              label: Text(S.current.writeComment),
                              labelStyle: Theme.of(context).textTheme.bodySmall,
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.kPrimaryColor)),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.kPrimaryColor)),
                              filled: false,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return S.current.writeComment;
                              }
                              return null;
                            },
                          )
                        ],
                      ),
                    )),
            actions: [
              TextButton(
                child: Text(S.current.cancel),
                onPressed: () => Navigator.of(context).pop(),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() && postImage != null) {
                    final imageParam = UploadImageParam(
                      image: postImage!,
                      path: APIPath.postsImages(currentUser.uid),
                    );
                    final newPost = Post(
                        postUserId: currentUser.uid,
                        content: _contentController.text.trim(),
                        postId: DateTime.now().toIso8601String(),
                        likes: [],
                        userImageUrl: currentUser.image);
                    BlocProvider.of<PostCubit>(context)
                        .addNewPostWithImage(param: imageParam, post: newPost);
                  }
                },
                child: Text(S.current.post),
              ),
            ],
          ),
        );
      },
    );
  }
}
