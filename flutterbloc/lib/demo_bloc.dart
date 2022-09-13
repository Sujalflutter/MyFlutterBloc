import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'demo_event.dart';
part 'demo_state.dart';

class DemoBloc extends Bloc<DemoEvent, DemoState> {
  DemoBloc() : super(DemoInitial()) {

    int? i ;

    on<DemoEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<IntialEvent>((event, emit) {
        i = event.i;
      emit(IntialState(i!));
    });

    on<increment>((event, emit){
      i = i! + 1;
      emit(IntialState(i!));
    });

    on<Decremnt>((event, emit) {
      i  = i! - 1 ;
      emit(IntialState(i!));
    });
  }
}
