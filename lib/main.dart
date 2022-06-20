import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_flutter/app/bloc_observer.dart';

import 'app/app.dart';

void main() {
  BlocOverrides.runZoned(
    () {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(const MyApp());
    },
    blocObserver: AppBlocObserver(),
  );
}
