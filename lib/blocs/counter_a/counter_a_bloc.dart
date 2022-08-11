import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_a_event.dart';
part 'counter_a_state.dart';

class CounterABloc extends Bloc<CounterAEvent, CounterAState> {
  CounterABloc() : super(CounterAState(count: 0)) {

    //Add Event
    on<CounterAEventAdd>((event, emit) {
      
    });

    //Reset Event
    on<CounterAEventAdd>((event, emit) {
      
    });
  }
}
