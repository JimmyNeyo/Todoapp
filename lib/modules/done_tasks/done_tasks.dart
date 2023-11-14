import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/shared/components/components.dart';
import 'package:todo/shared/cubit/homecubit.dart';
import 'package:todo/shared/cubit/homestates.dart';

class done_tasks extends StatelessWidget {
  const done_tasks({super.key});

  @override
  Widget build(BuildContext context) {
      return BlocConsumer<HomeCubit,HomeStates>(
      builder: (BuildContext context, HomeStates state) { 

        List tasks= HomeCubit.get(context).donetasks;
        return   
          ListView.separated(itemBuilder: (context , index ) => taskItem(tasks[index] , context),
          separatorBuilder: (context , index) => Container( width: double.infinity, height: 2, color: Colors.grey[300],),
          itemCount: tasks.length ,
        );
  },
      listener: (BuildContext context, HomeStates state) {  },
     );
      




}

}