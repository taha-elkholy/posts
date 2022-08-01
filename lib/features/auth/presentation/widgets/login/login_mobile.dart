import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_task/core/presentation/widgets/app_elevated_button.dart';
import 'package:social_task/core/presentation/widgets/app_loading.dart';
import 'package:social_task/core/presentation/widgets/app_outlined_icon_button.dart';
import 'package:social_task/core/presentation/widgets/app_text_form_field.dart';
import 'package:social_task/features/auth/domain/entities/login_param.dart';
import 'package:social_task/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:social_task/features/auth/presentation/cubit/auth_states.dart';
import 'package:social_task/features/auth/presentation/widgets/app_bar/auth_app_bar.dart';
import 'package:social_task/features/auth/presentation/widgets/reset_password/reset_password_dialog.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:social_task/utilities/constants/app_colors.dart';
import 'package:social_task/utilities/constants/app_sizes.dart';
import 'package:social_task/utilities/routes/routes.dart';

class LoginMobile extends StatefulWidget {
  const LoginMobile({Key? key}) : super(key: key);

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
      listener: (context, state) {
        state.whenOrNull(
          authenticated: (_) {
            Navigator.of(context).pushNamedAndRemoveUntil(
                AppRoutes.homePageRoute, (route) => route.isFirst);
          },
          error: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error),
              ),
            );
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: authAppBar(
              screenType: DeviceScreenType.mobile, title: S.current.login),
          body: state.maybeWhen(
              loading: () => const AppLoading(),
              orElse: () => SingleChildScrollView(
                    padding: const EdgeInsets.all(AppSizes.pagePadding),
                    physics: const BouncingScrollPhysics(),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.current.userName,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(
                            height: AppSizes.smallSizedBoxSpace,
                          ),
                          AppTextFormField(
                            controller: _emailController,
                            inputType: TextInputType.emailAddress,
                            validate: (value) {
                              if (value!.isEmpty) {
                                return S.current.emailValidation;
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: AppSizes.defaultSizedBoxSpace,
                          ),
                          Text(
                            S.current.password,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(
                            height: AppSizes.smallSizedBoxSpace,
                          ),
                          AppTextFormField(
                            controller: _passwordController,
                            inputType: TextInputType.visiblePassword,
                            validate: (value) {
                              if (value!.isEmpty || value.length < 8) {
                                return S.current.passwordValidation;
                              }
                              return null;
                            },
                            isPassword: true,
                          ),
                          const SizedBox(
                            height: AppSizes.smallSizedBoxSpace,
                          ),
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  barrierColor: AppColors.kLightGreyColor,
                                  builder: (_) => const ResetPasswordDialog(),
                                );
                              },
                              child: Text(
                                S.current.forgotPassword,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: AppSizes.largeSizedBoxSpace,
                          ),
                          AppElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  FocusScope.of(context).unfocus();
                                  final param = LoginParam(
                                      email: _emailController.text.trim(),
                                      password: _passwordController.text);
                                  BlocProvider.of<AuthCubit>(context)
                                      .login(param: param);
                                }
                              },
                              text: S.current.login),
                          const SizedBox(
                            height: AppSizes.defaultSizedBoxSpace,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Divider(
                                    thickness: AppSizes.defaultBorderWidth,
                                    endIndent: AppSizes.pagePadding),
                              ),
                              Text(
                                S.current.or,
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                              const Expanded(
                                child: Divider(
                                    thickness: AppSizes.defaultBorderWidth,
                                    indent: AppSizes.pagePadding),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: AppSizes.defaultSizedBoxSpace,
                          ),
                          Center(
                            child: Text(
                              S.current.haveNoAccount,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ),
                          const SizedBox(
                            height: AppSizes.defaultSizedBoxSpace,
                          ),
                          AppOutlinedIconButton(
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  AppRoutes.registerPageRoute,
                                  (route) => route.isFirst);
                            },
                            text: S.current.createNewAccount,
                            icon: Icons.person_add_alt_outlined,
                          ),
                        ],
                      ),
                    ),
                  )),
        );
      },
    );
  }
}
