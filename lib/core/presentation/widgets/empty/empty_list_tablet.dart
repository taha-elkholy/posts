import 'package:flutter/material.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:social_task/utilities/constants/app_sizes_tablet.dart';
import 'package:social_task/utilities/constants/assets.dart';

class EmptyListTablet extends StatelessWidget {
  const EmptyListTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.empty,
            width: AppSizesTablet.cardImageHeight,
            height: AppSizesTablet.cardImageHeight,
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
