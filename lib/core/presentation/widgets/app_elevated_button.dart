import 'package:flutter/material.dart';
import 'package:social_task/utilities/constants/app_sizes.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton(
      {Key? key, required this.onPressed, required this.text})
      : super(key: key);
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: AppSizes.defaultButtonHeight,
        child: ElevatedButton(onPressed: onPressed, child: Text(text)));
  }
}
