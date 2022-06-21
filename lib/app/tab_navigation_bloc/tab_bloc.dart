import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'tab_event.dart';

class TabBloc extends Bloc<TabEvent, int> {
  TabBloc() : super(0) {
    on<TabNevigationChangeEvent>((event, emit) {
      emit(event.newTab);
    });
  }
}
