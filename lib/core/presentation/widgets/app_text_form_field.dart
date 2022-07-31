import 'package:flutter/material.dart';
import 'package:social_task/utilities/constants/app_colors.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    Key? key,
    required this.controller,
    required this.inputType,
    this.isPassword = false,
    this.validate,
  }) : super(key: key);
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType inputType;
  final String? Function(String?)? validate;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      controller: widget.controller,
      validator: widget.validate,
      keyboardType: widget.inputType,
      obscureText: widget.isPassword == true ? !_obscureText : false,
      style: Theme.of(context).textTheme.bodyLarge,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword == true
            ? IconButton(
                onPressed: () {
                  setState(
                    () {
                      _obscureText = !_obscureText;
                    },
                  );
                },
                icon: Icon(
                  _obscureText == true
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: AppColors.kDarkGreyColor,
                ),
              )
            : null,
      ),
    );
  }
}
