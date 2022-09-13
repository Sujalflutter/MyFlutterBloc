part of 'demo_bloc.dart';

@immutable
abstract class DemoState {}

class DemoInitial extends DemoState {}
class IntialState extends DemoState {
  int i;
  IntialState(this.i);
}


