import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_task/core/presentation/widgets/app_elevated_button.dart';
import 'package:social_task/core/presentation/widgets/app_loading.dart';
import 'package:social_task/core/presentation/widgets/app_text_form_field.dart';
import 'package:social_task/features/auth/domain/entities/register_param.dart';
import 'package:social_task/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:social_task/features/auth/presentation/cubit/auth_states.dart';
import 'package:social_task/features/auth/presentation/widgets/app_bar/auth_app_bar.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:social_task/utilities/constants/app_sizes_tablet.dart';
import 'package:social_task/utilities/routes/routes.dart';

class RegisterTablet extends StatefulWidget {
  const RegisterTablet({Key? key}) : super(key: key);

  @override
  State<RegisterTablet> createState() => _RegisterTabletState();
}

class _RegisterTabletState extends State<RegisterTablet> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
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
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: authAppBar(
              screenType: DeviceScreenType.tablet, title: S.current.register),
          body: state.maybeWhen(
            loading: () => const AppLoading(),
            authenticated: (_) => const AppLoading(),
            orElse: () => Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(AppSizesTablet.pagePadding),
                  physics: const BouncingScrollPhysics(),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.current.email,
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
                          height: AppSizesTablet.defaultSizedBoxSpace,
                        ),
                        Text(
                          S.current.confirmPassword,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const SizedBox(
                          height: AppSizesTablet.smallSizedBoxSpace,
                        ),
                        AppTextFormField(
                          controller: _confirmPasswordController,
                          inputType: TextInputType.emailAddress,
                          validate: (value) {
                            if (value != _passwordController.text) {
                              return S.current.confirmPasswordValidation;
                            }
                            return null;
                          },
                          isPassword: true,
                        ),
                        const SizedBox(
                          height: AppSizesTablet.defaultSizedBoxSpace,
                        ),
                        Text(
                          S.current.firstName,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const SizedBox(
                          height: AppSizesTablet.smallSizedBoxSpace,
                        ),
                        AppTextFormField(
                          controller: _firstNameController,
                          inputType: TextInputType.name,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return S.current.firstNameValidation;
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: AppSizesTablet.defaultSizedBoxSpace,
                        ),
                        Text(
                          S.current.lastName,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const SizedBox(
                          height: AppSizesTablet.smallSizedBoxSpace,
                        ),
                        AppTextFormField(
                          controller: _lastNameController,
                          inputType: TextInputType.name,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return S.current.lastNameValidation;
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: AppSizesTablet.largeSizedBoxSpace,
                        ),
                        AppElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                FocusScope.of(context).unfocus();
                                final param = RegisterParam(
                                  firstName: _firstNameController.text.trim(),
                                  lastName: _lastNameController.text.trim(),
                                  email: _emailController.text.trim(),
                                  password: _passwordController.text,
                                );
                                BlocProvider.of<AuthCubit>(context)
                                    .register(param: param);
                              }
                            },
                            text: S.current.createAccount),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
