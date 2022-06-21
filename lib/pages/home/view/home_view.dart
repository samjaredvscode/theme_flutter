import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_flutter/app/tab_navigation_bloc/tab_bloc.dart';
import 'package:theme_flutter/pages/clock/clock_page.dart';
import 'package:theme_flutter/pages/cronometro/chronometer_page.dart';
import 'package:theme_flutter/pages/home/home_page.dart';
import 'package:theme_flutter/pages/theme_mode/themes_page.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBloc, int>(
      builder: (context, state) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            systemNavigationBarColor: Theme.of(context)
                .appBarTheme
                .systemOverlayStyle
                ?.systemNavigationBarColor,
            systemNavigationBarIconBrightness: Theme.of(context)
                .appBarTheme
                .systemOverlayStyle
                ?.statusBarIconBrightness,
          ),
          child: Scaffold(
            body: ListPage.listPage[state],
            bottomNavigationBar: NavigationBarTheme(
              data: NavigationBarThemeData(
                backgroundColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                height: 90,
              ),
              child: NavigationBar(
                selectedIndex: state,
                onDestinationSelected: (index) => context
                    .read<TabBloc>()
                    .add(TabNevigationChangeEvent(newTab: index)),
                destinations: const [
                  NavigationDestination(
                    icon: Icon(Icons.factory_outlined),
                    selectedIcon: Icon(Icons.factory),
                    label: 'Home',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.schedule_rounded),
                    selectedIcon: Icon(Icons.watch_later_rounded),
                    label: 'Reloj',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.dark_mode_outlined),
                    selectedIcon: Icon(Icons.dark_mode_rounded),
                    label: 'Temas',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.timer_outlined),
                    selectedIcon: Icon(Icons.timer),
                    label: 'Cronómetro',
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {},
              isExtended: true,
              tooltip: 'Añadir',
              label: const Text('Añadir'),
              icon: const Icon(Icons.add),
            ),
          ),
        );
      },
    );
  }
}

class ListPage {
  static final listPage = [
    const HomePage(),
    const ClockPage(),
    const ThemesModePages(),
    const ChronometerPage(),
  ];
}
