import 'package:flutter/material.dart';
import 'package:social_task/utilities/constants/app_sizes.dart';

class AppOutlinedIconButton extends StatelessWidget {
  const AppOutlinedIconButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.icon})
      : super(key: key);
  final VoidCallback onPressed;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: AppSizes.defaultButtonHeight,
        child: OutlinedButton.icon(
            onPressed: onPressed, icon: Icon(icon), label: Text(text)));
  }
}
