import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/domain/entities/upload_image_param.dart';
import 'package:social_task/core/domain/entities/user_entity.dart';
import 'package:social_task/core/domain/use_cases/upload_image_use_case.dart';
import 'package:social_task/core/domain/use_cases/use_case.dart';
import 'package:social_task/features/profile/domain/use_case/get_user_data_use_case.dart';
import 'package:social_task/features/profile/domain/use_case/set_user_data_use_case.dart';
import 'package:social_task/features/profile/presentation/cubit/profile_states.dart';
import 'package:social_task/utilities/utilities.dart';

@injectable
class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit(this._getUserDataUseCase, this._setUserDataUseCase,
      this._uploadImageUseCase)
      : super(const ProfileStates.initial());

  final GetUserDataUseCase _getUserDataUseCase;
  final SetUserDataUseCase _setUserDataUseCase;
  final UploadImageUseCase _uploadImageUseCase;

  Future<void> getUserData() async {
    emit(const ProfileStates.loading());

    final result = await _getUserDataUseCase(NoParams());
    emit(
      result.fold(
        (failure) => ProfileStates.error(errorMessage: failure.message),
        (user) {
          // save global as we use it's values in many files
          currentUser = user;
          return ProfileStates.loaded(user: user);
        },
      ),
    );
  }

  Future<void> setUserData({required UserEntity user}) async {
    emit(const ProfileStates.loading());

    final result = await _setUserDataUseCase(user);
    emit(
      result.fold(
        (failure) => ProfileStates.error(errorMessage: failure.message),
        (_) => const ProfileStates.updated(),
      ),
    );
  }

  Future<void> uploadProfileImage(
      {required UserEntity user, required UploadImageParam param}) async {
    emit(const ProfileStates.loading());

    final result = await _uploadImageUseCase(param);

    result.fold(
      (failure) => emit(ProfileStates.error(errorMessage: failure.message)),
      (url) {
        setUserData(user: user.copyWith(image: url));
      },
    );
  }
}
