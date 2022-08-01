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
import 'package:social_task/utilities/constants/app_sizes_tablet.dart';
import 'package:social_task/utilities/routes/routes.dart';

class LoginTablet extends StatefulWidget {
  const LoginTablet({Key? key}) : super(key: key);

  @override
  State<LoginTablet> createState() => _LoginTabletState();
}

class _LoginTabletState extends State<LoginTablet> {
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
              screenType: DeviceScreenType.tablet, title: S.current.login),
          body: state.maybeWhen(
              loading: () => const AppLoading(),
              orElse: () => Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: SingleChildScrollView(
                        padding:
                            const EdgeInsets.all(AppSizesTablet.pagePadding),
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
                                height: AppSizesTablet.smallSizedBoxSpace,
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
                                height: AppSizesTablet.defaultSizedBoxSpace,
                              ),
                              Text(
                                S.current.password,
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                              const SizedBox(
                                height: AppSizesTablet.smallSizedBoxSpace,
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
                                height: AppSizesTablet.smallSizedBoxSpace,
                              ),
                              Align(
                                alignment: AlignmentDirectional.centerEnd,
                                child: InkWell(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      barrierColor: AppColors.kLightGreyColor,
                                      builder: (_) =>
                                          const ResetPasswordDialog(),
                                    );
                                  },
                                  child: Text(
                                    S.current.forgotPassword,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: AppSizesTablet.largeSizedBoxSpace,
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
                                height: AppSizesTablet.defaultSizedBoxSpace,
                              ),
                              Row(
                                children: [
                                  const Expanded(
                                    child: Divider(
                                        thickness:
                                            AppSizesTablet.defaultBorderWidth,
                                        endIndent: AppSizesTablet.pagePadding),
                                  ),
                                  Text(
                                    S.current.or,
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                  const Expanded(
                                    child: Divider(
                                        thickness:
                                            AppSizesTablet.defaultBorderWidth,
                                        indent: AppSizesTablet.pagePadding),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: AppSizesTablet.defaultSizedBoxSpace,
                              ),
                              Center(
                                child: Text(
                                  S.current.haveNoAccount,
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ),
                              const SizedBox(
                                height: AppSizesTablet.defaultSizedBoxSpace,
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
                      ),
                    ),
                  )),
        );
      },
    );
  }
}
