
// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/modules/counter/counter_states.dart';



class CounterCubit extends Cubit<CounterStates> {
  CounterCubit(super.CounterInitialState);

//   CounterCubit(CounterStates CounterInitialState) : super(CounterInitialState);




  static CounterCubit get(context) =>  BlocProvider.of(context);
  
  int counterr = 0;

  void Plus(){
    counterr++;
    emit(CounterPlusState());
  }

  void minus(){
   counterr--;
  emit(CounterMinusState());
  }
}