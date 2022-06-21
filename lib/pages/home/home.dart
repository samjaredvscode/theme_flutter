import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_flutter/app/tab_navigation_bloc/tab_bloc.dart';

import 'view/home_view.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TabBloc(),
      child: const HomeView(),
    );
  }
}
