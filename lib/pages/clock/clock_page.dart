import 'package:flutter/material.dart';

class ClockPage extends StatelessWidget {
  const ClockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C L O C K'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Clock Page'),
      ),
    );
  }
}
