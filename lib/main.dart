import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:social_task/core/presentation/pages/landing/cubit/auth_status_cubit.dart';
import 'package:social_task/di/injectable.dart';
import 'package:social_task/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:social_task/utilities/locales/presentation/bloc/locale_cubit/locale_cubit.dart';
import 'package:social_task/utilities/locales/presentation/bloc/locale_cubit/locale_states.dart';
import 'package:social_task/utilities/routes/router.dart';
import 'package:social_task/utilities/routes/routes.dart';
import 'package:social_task/utilities/theme/app_themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthStatusCubit>()..getAuthStatus(),
        ),
        BlocProvider(
          create: (context) => getIt<AuthCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<LocaleCubit>()..getLocalization(),
        ),
      ],
      child: BlocBuilder<LocaleCubit, LocaleStates>(
        builder: (context, state) => MaterialApp(
          onGenerateTitle: (_) => S.current.appName,
          debugShowCheckedModeBanner: false,
          locale: BlocProvider.of<LocaleCubit>(context).locale,
          supportedLocales: S.delegate.supportedLocales,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          theme: AppThemes.lightTheme,
          onGenerateRoute: onGenerate,
          initialRoute: AppRoutes.landingPageRoute,
        ),
      ),
    );
  }
}
