import 'package:flutter/material.dart';
import 'package:social_task/utilities/constants/app_sizes.dart';

class AppFloatingButton extends StatelessWidget {
  const AppFloatingButton(
      {Key? key,
      required this.onPressed,
      required this.icon,
      required this.label})
      : super(key: key);
  final VoidCallback onPressed;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          onPressed: onPressed,
          child: Icon(icon),
        ),
        const SizedBox(
          height: AppSizes.smallSizedBoxSpace,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}
