import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/core/presentation/pages/home/home_page.dart';
import 'package:social_task/core/presentation/pages/landing/cubit/auth_status_cubit.dart';
import 'package:social_task/core/presentation/pages/landing/cubit/auth_status_states.dart';
import 'package:social_task/core/presentation/widgets/app_loading.dart';
import 'package:social_task/features/auth/presentation/pages/login_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthStatusCubit, AuthStatusStates>(
        builder: (context, state) {
      return state.maybeWhen(
        authenticated: () => const HomePage(),
        loading: () => const AppLoading(),
        orElse: () => const LoginPage(),
      );
    });
  }
}
