part of 'tab_bloc.dart';

abstract class TabEvent extends Equatable {
  const TabEvent();

  @override
  List<Object> get props => [];
}

class TabNevigationChangeEvent extends TabEvent {
  const TabNevigationChangeEvent({required this.newTab});

  final int newTab;

  @override
  List<Object> get props => [newTab];
}
