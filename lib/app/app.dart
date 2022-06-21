import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_flutter/pages/home/home.dart';
import 'package:theme_flutter/theme/theme.dart';
import 'package:theme_flutter/theme/theme_bloc/theme_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeModeData =
        context.select((ThemeBloc themeBloc) => themeBloc.state);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeModeData.themeModeState,
      theme: AppTheme.appThemeData[AppThemeStatus.light],
      darkTheme: AppTheme.appThemeData[AppThemeStatus.dark],
      home: const PresentationPage(),
    );
  }
}

class PresentationPage extends StatelessWidget {
  const PresentationPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}
