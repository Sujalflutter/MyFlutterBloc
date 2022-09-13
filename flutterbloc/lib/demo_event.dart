part of 'demo_bloc.dart';

@immutable
abstract class DemoEvent {}

class IntialEvent extends DemoEvent{
  int i;
  IntialEvent(int this.i);
}


class increment extends DemoEvent {


}

class Decremnt extends DemoEvent {


}