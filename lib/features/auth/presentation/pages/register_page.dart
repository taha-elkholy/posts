import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/core/presentation/widgets/app_elevated_button.dart';
import 'package:social_task/core/presentation/widgets/app_loading.dart';
import 'package:social_task/core/presentation/widgets/app_text_form_field.dart';
import 'package:social_task/features/auth/domain/entities/register_param.dart';
import 'package:social_task/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:social_task/features/auth/presentation/cubit/auth_states.dart';
import 'package:social_task/features/auth/presentation/widgets/auth_app_bar.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:social_task/utilities/constants/app_sizes.dart';
import 'package:social_task/utilities/routes/routes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController =
      TextEditingController(text: '12345678');
  final TextEditingController _confirmPasswordController =
      TextEditingController(text: '12345678');
  final TextEditingController _firstNameController =
      TextEditingController(text: 'Taha');
  final TextEditingController _lastNameController =
      TextEditingController(text: 'Hamza');

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
          appBar: authAppBar(title: S.current.register),
          body: state.maybeWhen(
            loading: () => const AppLoading(),
            authenticated: (_) => const AppLoading(),
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
                      S.current.email,
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
                      height: AppSizes.defaultSizedBoxSpace,
                    ),
                    Text(
                      S.current.confirmPassword,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(
                      height: AppSizes.smallSizedBoxSpace,
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
                      height: AppSizes.defaultSizedBoxSpace,
                    ),
                    Text(
                      S.current.firstName,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(
                      height: AppSizes.smallSizedBoxSpace,
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
                      height: AppSizes.defaultSizedBoxSpace,
                    ),
                    Text(
                      S.current.lastName,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(
                      height: AppSizes.smallSizedBoxSpace,
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
                      height: AppSizes.largeSizedBoxSpace,
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
        );
      },
    );
  }
}
