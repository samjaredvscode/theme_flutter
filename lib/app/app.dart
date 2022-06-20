import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_flutter/theme/theme.dart';
import 'package:theme_flutter/theme/theme_bloc/theme_bloc.dart';
import 'package:theme_flutter/theme/theme_mode.dart';

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
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        log('${state.themeModeState}');
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            systemNavigationBarColor: Theme.of(context).colorScheme.surface,
          ),
          child: Scaffold(
            appBar: AppBar(
              title: const Text('T H E M E S'),
              centerTitle: true,
            ),
            body: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: ThemeModeStatus.values.length,
              itemBuilder: (context, index) {
                final itemThemeModeStatus = ThemeModeStatus.values[index];
                return Card(
                  child: ListTile(
                    title: Text('$itemThemeModeStatus'),
                    onTap: () {
                      context.read<ThemeBloc>().add(
                          ThemeChangedEvent(themeModeApp: itemThemeModeStatus));
                    },
                  ),
                );
              },
            ),
            bottomNavigationBar: NavigationBarTheme(
              data: NavigationBarThemeData(
                backgroundColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                height: 90,
              ),
              child: NavigationBar(
                destinations: const [
                  NavigationDestination(
                    icon: Icon(Icons.alarm_add),
                    label: 'Alarma',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.alarm_add),
                    label: 'Reloj',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.alarm_add),
                    label: 'Hora',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.alarm_add),
                    label: 'Cronometro',
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
