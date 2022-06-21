import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('H O M E'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Dialogs.alertDialog(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                primary: Theme.of(context).colorScheme.onPrimary,
              ),
              child: const Text('Alerta de dialogo'),
            ),
            const Text('Home Page'),
          ],
        ),
      ),
    );
  }
}

abstract class Dialogs {
  static Future<void> alertDialog(
    BuildContext context, {
    final String? title,
    final String? content,
  }) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.background,
          title: const Text('ALERTA!'),
          content: const Text('Bienvenidos a mi primera alerta'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop<void>();
              },
              child: const Text('Cerrar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop<void>();
              },
              child: const Text('Aceptar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop<void>();
              },
              child: const Text('Sobre'),
            )
          ],
        );
      },
    );
  }
}
