import 'package:flutter/material.dart';
import 'package:social_task/core/presentation/pages/home/home_page.dart';
import 'package:social_task/core/presentation/pages/landing/landing_page.dart';
import 'package:social_task/features/auth/presentation/pages/register_page.dart';
import 'package:social_task/utilities/routes/routes.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.registerPageRoute:
      return MaterialPageRoute(
        builder: (_) => const RegisterPage(),
        settings: settings,
      );

    case AppRoutes.homePageRoute:
      return MaterialPageRoute(
        builder: (_) => const HomePage(),
        settings: settings,
      );
    case AppRoutes.landingPageRoute:
    default:
      return MaterialPageRoute(
        builder: (_) => const LandingPage(),
        settings: settings,
      );
  }
}
