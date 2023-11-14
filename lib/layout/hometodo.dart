// ignore_for_file: must_be_immutable


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo/shared/components/components.dart';
import 'package:todo/shared/cubit/homecubit.dart';
import 'package:todo/shared/cubit/homestates.dart';

// import 'dart:io';
// import 'package:image_picker/image_picker.dart';


class HomeLayout extends StatelessWidget {
   HomeLayout({super.key});


  Database? database ;
  
  //File? _image;


  var scaffoldkey = GlobalKey<ScaffoldState>();


  var formkey = GlobalKey<FormState>();



  var titlectrl = TextEditingController();
  var datactrl = TextEditingController();
  var timeectrl = TextEditingController();



      

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(HomeInitialState())..createDatabase(),

      child: BlocConsumer< HomeCubit , HomeStates>(
        builder: (BuildContext context, HomeStates state) { 
          HomeCubit  access = HomeCubit.get(context);
          return    Scaffold(
          key: scaffoldkey,
          
            appBar: AppBar(
            title:  Text(
               access.titles[access.currentIndex],
              style: const TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.red[800],
            elevation: 50,
            leading: const Icon(Icons.account_box),
            actions: [
              IconButton(
                  onPressed: () {
                    // ignore: avoid_print
                    print('n');
                  },
                  icon: const Icon(Icons.adb)),
            ],
          ),
         
          
            floatingActionButton: FloatingActionButton(
              onPressed: (){
          
                    if( access.isbottomsheetup){
                      if(formkey.currentState!.validate()){
                        
                        access.insertToDatabase(title: titlectrl.text,
                         data: datactrl.text,
                          time: timeectrl.text,
                          );
          
                      }
        
                    }
                    else{
                      scaffoldkey.currentState!.showBottomSheet(
                    (context) => 
                   
                      Container(
                        color: Colors.grey[300],
                        child: Padding(                   
                          padding: const EdgeInsets.all(20.0),
                          child: Form(
                            key: formkey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                              
                                myTFF(
                                bgcolor: Colors.grey[200],
                                controller: titlectrl,
                                type: TextInputType.text,
                                label: 'Title of Tasks', 
                                valida: (value){
                                    if(value!.isEmpty){
                                    return' time must be entered';
                                  }
                                  return null ;                            
                                
                                },
                                prefix: Icons.task,                       
                                ),
                                
                                const SizedBox(
                                  height: 20,
                                ),
                               
                                myTFF(
                                bgcolor: Colors.grey[200],
                                controller: timeectrl,
                                type: TextInputType.datetime,
                                label: 'Time of Tasks', 
                                onTap:(){
                                  showTimePicker(context: context,
                                   initialTime: TimeOfDay.now(),
                                   ).then((value) {
                                      timeectrl.text = value!.format(context).toString() ;
                                  
                                   });
                                },
                                valida: ( value){
                                  
                                  if(value!.isEmpty){
                                    return' time must be entered';
                                  }
                                  return null ;                            
                                },
                                prefix: Icons.timer,
                                
                                ),
                                
                                const SizedBox(
                                  height: 20,
                                ),
                               
                                myTFF(
                                bgcolor: Colors.grey[200],
                                controller: datactrl,
                                type: TextInputType.datetime,
                                label: 'date of Tasks', 
                                onTap:(){
                                  showDatePicker(
                                    context: context,
                                   initialDate: DateTime.now(), 
                                   firstDate: DateTime.now(), 
                                   lastDate: DateTime.parse('2030-05-03'),
                                   ).then((value) {
                                    datactrl.text =DateFormat.yMMMd().format(value!);
                                      
                                   });
                                },
                                valida: (value){
                                  if(value!.isEmpty){
                                    return' time must be entered';
                                  }
                                 
                                },
                                prefix: Icons.date_range_rounded,
                                
                                )
                                
                                
                              
                              ],
                                              
                            ),
                          ),
                        ),
                      )
                      ).closed.then((value) {
                        //   isbottomsheetup =false ;
                        //     floatIcon =Icons.edit;
                            access.changeBottomFloatIcon(isshowtup: false ,Icon: Icons.edit );         
                      });
                      //   isbottomsheetup=true;
                      // floatIcon=Icons.add;
                     access.changeBottomFloatIcon(isshowtup: true ,Icon: Icons.add );
                    }
                    
                   
                     
              } , 
              child:Icon(access.floatIcon)), 
        
            body:  state is HomeGetDataBaseLoading ? const Center(child: CircularProgressIndicator()) : access.Screen[access.currentIndex],
            
            //body : access.Screen[access.currentIndex],
                 bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              //showSelectedLabels: false,
              currentIndex: access.currentIndex,
              onTap: (index){

                  access.bottomclick(index);

              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.task) , label: 'tasks'),
                BottomNavigationBarItem(icon: Icon(Icons.done_all) , label: 'Done'),
                BottomNavigationBarItem(icon: Icon(Icons.archive_outlined) , label: 'archive'),
              ]
              ),
        
          
        );
  
         }, listener: (BuildContext context, HomeStates state) { 
          if(state is HomeInsertDataBase){
              Navigator.pop(context);
          }
          },
         ),
    );

     
  }




}

