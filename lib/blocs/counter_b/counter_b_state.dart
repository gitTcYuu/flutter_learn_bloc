part of 'counter_b_bloc.dart';

abstract class CounterBState extends Equatable {
  const CounterBState();
  
  @override
  List<Object> get props => [];
}

class CounterBInitial extends CounterBState {}
