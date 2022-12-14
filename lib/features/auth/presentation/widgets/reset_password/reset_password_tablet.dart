import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/core/presentation/widgets/app_loading.dart';
import 'package:social_task/core/presentation/widgets/app_text_form_field.dart';
import 'package:social_task/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:social_task/features/auth/presentation/cubit/auth_states.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:social_task/utilities/constants/app_sizes_tablet.dart';

class ResetPasswordTablet extends StatefulWidget {
  const ResetPasswordTablet({Key? key}) : super(key: key);

  @override
  State<ResetPasswordTablet> createState() => _ResetPasswordTabletState();
}

class _ResetPasswordTabletState extends State<ResetPasswordTablet> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _newPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _newPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: BlocConsumer<AuthCubit, AuthStates>(
        listener: (context, state) {
          state.mapOrNull(sendResetEmail: (_) {
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(S.current.emailSent),
              ),
            );
          }, error: (errorState) {
            {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(errorState.errorMessage),
                ),
              );
            }
          });
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const AppLoading(),
            orElse: () => AlertDialog(
              insetPadding: EdgeInsets.zero,
              title: Text(S.current.resetPassword),
              contentPadding:
                  const EdgeInsets.all(AppSizesTablet.cardContentPadding),
              content: Column(
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
                ],
              ),
              actions: [
                TextButton(
                  child: Text(S.current.cancel),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      BlocProvider.of<AuthCubit>(context)
                          .resetPassword(email: _emailController.text);
                    }
                  },
                  child: Text(S.current.send),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
