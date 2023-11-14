import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/shared/cubit/bloc_observer.dart';
import 'layout/hometodo.dart';



void main() {
  Bloc.observer = MyBlocObserver();
  runApp( ToDo());
}


class ToDo extends StatelessWidget{
   ToDo({super.key});


  @override
  Widget build(BuildContext context) {
     return   MaterialApp(
     debugShowCheckedModeBanner: false ,
     home: HomeLayout(),  

      
     );
     
  }


}