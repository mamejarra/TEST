import 'dart:async';

import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

void main(List<String> args) {
  final cubit = CounterCubit();

  print(cubit.state); //should print 0 = the default state of the counter

  cubit.increment();
  print(cubit.state); //should print 1

  cubit.increment();
  print(cubit.state); //should print 2

  cubit.decrement();
  print(cubit.state); //should print 1

  cubit.close();
}
