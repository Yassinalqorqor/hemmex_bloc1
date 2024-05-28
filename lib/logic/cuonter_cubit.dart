

import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(CounterInit());
  int counter =0;

  incrementCounter(){
    counter++;
    emit(CounterIncrement());
  }


}


