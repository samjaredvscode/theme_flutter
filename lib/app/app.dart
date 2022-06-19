import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    final themeData = context.select((ThemeBloc themeBloc) => themeBloc.state);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeData ? ThemeMode.dark : ThemeMode.light,
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
    return BlocBuilder<ThemeBloc, bool>(
      builder: (context, state) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            systemNavigationBarColor: state ? Colors.black : Colors.white,
          ),
          child: Scaffold(
            appBar: AppBar(
              title: const Text('T H E M E S'),
              centerTitle: true,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness:
                    state ? Brightness.light : Brightness.dark,
              ),
            ),
            body: Center(
              child: Column(
                children: [
                  SwitchListTile.adaptive(
                    value: state,
                    title: const Text('Modo Oscuro'),
                    onChanged: (changedTheme) {
                      context
                          .read<ThemeBloc>()
                          .add(ThemeChangedEvent(themeStatus: changedTheme));
                    },
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Mostra diálogo'),
                  )
                ],
              ),
            ),
            bottomNavigationBar: NavigationBar(
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
        );
      },
    );
  }
}
