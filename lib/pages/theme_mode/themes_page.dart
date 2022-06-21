import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_flutter/theme/theme_bloc/theme_bloc.dart';
import 'package:theme_flutter/theme/theme_mode.dart';

class ThemesModePages extends StatelessWidget {
  const ThemesModePages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            color: Theme.of(context).colorScheme.primary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text(
                '$itemThemeModeStatus',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              onTap: () {
                context
                    .read<ThemeBloc>()
                    .add(ThemeChangedEvent(themeModeApp: itemThemeModeStatus));
              },
            ),
          );
        },
      ),
    );
  }
}
