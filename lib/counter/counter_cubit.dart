/*

CUBIT: It is a simplified version of BLOC for easy state management.
We always have to define the CUBIT type whenever we create it.

*/

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int>{

  // Create a Constructor
  CounterCubit(super.initialState);

  // increment
  void increment() => emit(state + 1);

  //decrement
  void decrement() => emit(state - 1);
}
