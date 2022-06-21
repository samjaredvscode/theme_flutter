import 'package:flutter/material.dart';

class ChronometerPage extends StatelessWidget {
  const ChronometerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C H R O N O M E T E R'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Cronomtero'),
      ),
    );
  }
}
