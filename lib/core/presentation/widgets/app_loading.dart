import 'package:flutter/material.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:social_task/utilities/constants/app_colors.dart';
import 'package:social_task/utilities/constants/app_sizes.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const _JumpingDot(),
          const SizedBox(
            height: AppSizes.defaultSizedBoxSpace,
          ),
          Text(
            S.current.loading,
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      ),
    );
  }
}

class _JumpingDot extends StatefulWidget {
  const _JumpingDot({Key? key}) : super(key: key);

  @override
  State<_JumpingDot> createState() => _JumpingDotState();
}

class _JumpingDotState extends State<_JumpingDot>
    with TickerProviderStateMixin {
  late List<AnimationController> _animationControllers;

  final List<Animation<double>> _animations = [];

  final List<_Dot> _dots = [
    const _Dot(color: AppColors.kBlueColor),
    const _Dot(color: AppColors.kPrimaryColor),
    const _Dot(color: AppColors.kLightBlueColor),
    const _Dot(color: AppColors.kBlueColor),
  ];

  @override
  void initState() {
    super.initState();
    _initAnimation();
  }

  @override
  void dispose() {
    for (var controller in _animationControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(AppSizes.numberOfLoadingDots, (index) {
        return AnimatedBuilder(
          animation: _animationControllers[index],
          builder: (context, child) {
            return Container(
              padding: const EdgeInsets.all(AppSizes.dotPadding),
              child: Transform.translate(
                offset: Offset(0, _animations[index].value),
                child: _dots[index],
              ),
            );
          },
        );
      }).toList(),
    );
  }

  void _initAnimation() {
    // list of same animation controllers
    _animationControllers = List.generate(
      AppSizes.numberOfLoadingDots,
      (index) {
        return AnimationController(
          vsync: this,
          duration: const Duration(
            milliseconds: AppSizes.defaultAnimationDuration,
          ),
        );
      },
    ).toList();

    // animate each dot vertically
    for (int i = 0; i < AppSizes.numberOfLoadingDots; i++) {
      _animations.add(
          Tween<double>(begin: 0, end: -20).animate(_animationControllers[i]));
    }

    for (int i = 0; i < AppSizes.numberOfLoadingDots; i++) {
      _animationControllers[i].addStatusListener((status) {
        //On Complete
        if (status == AnimationStatus.completed) {
          //return of original position
          _animationControllers[i].reverse();
          //if it is not last dot then start the animation of next dot.
          if (i != AppSizes.numberOfLoadingDots - 1) {
            _animationControllers[i + 1].forward();
          }
        }
        //if last dot is back to its original position then start animation of the first dot.
        if (i == AppSizes.numberOfLoadingDots - 1 &&
            status == AnimationStatus.dismissed) {
          _animationControllers[0].forward();
        }
      });
    }

    //trigger animation of first dot to start the whole animation.
    _animationControllers.first.forward();
  }
}

class _Dot extends StatelessWidget {
  const _Dot({Key? key, required this.color}) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSizes.dotWidth,
      height: AppSizes.dotWidth,
      child: DecoratedBox(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
