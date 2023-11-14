// ignore_for_file: unnecessary_string_interpolations, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo/modules/arcived/archived.dart';
import 'package:todo/modules/done_tasks/done_tasks.dart';
import 'package:todo/modules/new_tasks/new_tasks.dart';
import 'package:todo/shared/cubit/homestates.dart';

class HomeCubit extends Cubit<HomeStates> {
  //HomeCubit(HomeInitialState homeInitialState);

  HomeCubit(HomeInitialState homeInitialState) : super(HomeInitialState());

  //List <Map> tasks = [];
  List<Map> newTasks = [];
  List<Map> donetasks = [];
  List<Map> archivetasks = [];

  static HomeCubit get(context) => BlocProvider.of(context);

  var currentIndex = 0;

  List<Widget> Screen = [
    new_tssks(),
    done_tasks(),
    archive_tasks(),
  ];

  List<String> titles = [
    'title task',
    'Done tasks',
    'Archived Tasks',
  ];

  void bottomclick(int index) {
    currentIndex = index;
    emit(BottomCLickState());
  }

  late Database database;
  void createDatabase() {
    openDatabase('todo.db', version: 1, onCreate: (database, Version) {
      print('database created');
      //int id
      //string tittle
      //string data
      //string time
      //string status
      database
          .execute(
              'CREATE TABLE tasks (id INTEGER PRIMARY KEY ,title TEXT , data TEXT , time TEXT ,status TEXT  )')
          .then((value) {
        print('table is created');
      }).catchError((error) {
        print('table not create error${error.toString()}');
      });
    }, onOpen: (database) {
      getDataBase(database);
    }).then((value) {
      database = value;
      emit(HomeCreateDataBase());
    });
  }

  Future insertToDatabase({
    required String title,
    required String data,
    required String time,
  }) async {
    await database.transaction((txn) {
      return txn
          .rawInsert(
              'INSERT INTO tasks (title , data , time  ,status) VALUES("$title" , "$data" , "$time" , "new" )')
          .then((value) {
        print("$value insert successfully");
        emit(HomeInsertDataBase());
      }).catchError((error) {
        print(
          'happen error in insert new rec data ${error.toString()}',
        );
      });
    });
  }

  void getDataBase(database) {

     newTasks = [];
     donetasks = [];
     archivetasks = [];
    emit(HomeGetDataBaseLoading());
    database!.rawQuery('SELECT * FROM  tasks').then((value) {
      //  tasks = value ;
      //   print(tasks);
      value.forEach((element) {
        if (element['status'] == 'new') {
          newTasks.add(element);
        } else if (element['status'] == 'done') {
          donetasks.add(element);
        } else {
          archivetasks.add(element);
        }
      });

      emit(HomeGetDataBase());
    });
  }

  IconData floatIcon = Icons.add;
  bool isbottomsheetup = false;

  void changeBottomFloatIcon(
      {required bool isshowtup, required IconData Icon}) {
    isbottomsheetup = isshowtup;
    floatIcon = Icon;
    emit(ChangIconUp());
  }

  void updateData({
    required String status,
    required int id,
  }) async {
    database.rawUpdate(
      'UPDATE tasks SET status=?  WHERE id=? ',
      ['$status', id],
    ).then((value) {
      getDataBase(database);
      emit(HomeUpdateDataBaseLoading());
    });
  }
  

  
  void deletdatabase({
    required int id,
  }) async {
    database.rawDelete(
      'DELETE From  tasks WHERE id=? ',
      [ id],
    ).then((value) {
      getDataBase(database);
      emit(HomeDeleteDataBase());
    });
  }



}
