import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_b_event.dart';
part 'counter_b_state.dart';

class CounterBBloc extends Bloc<CounterBEvent, CounterBState> {
  CounterBBloc() : super(CounterBInitial()) {
    on<CounterBEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
