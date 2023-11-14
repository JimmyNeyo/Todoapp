import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/modules/counter/counter_cubit.dart';
import 'package:todo/modules/counter/counter_states.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {


    return BlocProvider(
      create: (BuildContext context) => CounterCubit(CounterInitialState()) ,
      child: BlocConsumer<CounterCubit , CounterStates>(
        builder: (BuildContext context, state) {
           return   Scaffold(
          
           appBar: AppBar(
            backgroundColor: Colors.white10,
            elevation: 0.5,
            titleSpacing: 15,
            title: const Row(
              children: [
                CircleAvatar(
                  radius: 22.0,
                  backgroundImage: NetworkImage(
                      'https://static.vecteezy.com/system/resources/thumbnails/007/861/763/small/3d-realistic-phone-call-button-illustration-vector.jpg',),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Contacts',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.person_3,
                        size: 25.0,
                        color: Colors.white,
                      ))),
          
            ],
          ),
         
          
           body: 
           Center(
             child: Row(
           
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
           
                TextButton(onPressed: (){
                 
                    
                  CounterCubit.get(context).Plus();
                  
                } , child: const Text('Plus')),
                Text('${CounterCubit.get(context).counterr}', style: const TextStyle( fontSize: 50 , fontWeight: FontWeight.bold),), 
                TextButton(onPressed: (){
         
                    
                  CounterCubit.get(context).minus();
                  
                } , child: const Text('Minus')),
                
           
           
             ],),
           )
           
        
        );
   },
        listener: (BuildContext context, Object? state) {  },
          ),
    );
  }


}
