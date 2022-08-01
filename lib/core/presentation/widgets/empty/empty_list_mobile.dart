import 'package:flutter/material.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:social_task/utilities/constants/app_sizes.dart';
import 'package:social_task/utilities/constants/assets.dart';

class EmptyListMobile extends StatelessWidget {
  const EmptyListMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.empty,
            width: AppSizes.cardImageHeight,
            height: AppSizes.cardImageHeight,
          ),
          Text(
            S.current.nothingToShow,
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      ),
    );
  }
}
