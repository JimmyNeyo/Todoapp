import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todo/modules/bmi_result/bmiResult.dart';

class bmi_cala extends StatefulWidget {
  const bmi_cala({super.key});

  @override
  State<bmi_cala> createState() => _bmi_calaState();
}

class _bmi_calaState extends State<bmi_cala> {

  bool isMale = true ;
  double height = 120.0;
    int age = 20 ;
    int wei = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,
          elevation: 0.5,
          titleSpacing: 15,
          title: Row(
            children: [
              CircleAvatar(
                radius: 22.0,
                backgroundImage: NetworkImage(
                  'https://arabic.sport360.com/wp-content/uploads/2016/02/GYM.jpg',
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                'Gym',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.person_3,
                      size: 25.0,
                      color: Colors.white,
                    ))),
          ],
        ),
        body: Column(
          children: [

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;
                          });


                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: isMale ? Colors.blue : Colors.grey[200]
                              ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('images/tes.png'), height: 75,width: 75,),
                              
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'male',
                                style: TextStyle(fontSize: 30),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: !isMale ? Colors.pink : Colors.grey[200] ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            
                              Image(image: AssetImage('images/tesla.png'), height: 100,width: 100,),
                              
                               SizedBox(
                                height: 20,
                              ),
                              Text(
                                'female',
                                style: TextStyle(fontSize: 30),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                              decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[400]),
                              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 40),
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    Slider(
                        thumbColor: Colors.black,
                        value: height,
                        max: 200.0,
                        min: 80.0,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        })
                  ],
                              ),
                            ),
                )
            ),
          
            Expanded( 
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  
                  children: [
              
                    Expanded(
                      child: Container(
                        
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[500],
                                    ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Age' , style: TextStyle(fontWeight:FontWeight.bold, fontSize: 45),),
                            Text('${age}' , style: TextStyle(fontWeight:FontWeight.bold , fontSize: 35),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                } , heroTag: 'age--',mini: true, child: Icon(Icons.remove),),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                } ,heroTag: 'age++' ,mini: true, child: Icon(Icons.add),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
              
              
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[500],
                                    ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Weight' , style: TextStyle(fontWeight:FontWeight.bold, fontSize: 45),),
                            Text('${wei}' , style: TextStyle(fontWeight:FontWeight.bold , fontSize: 35),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    wei--;
                                  });
                                } ,heroTag: 'wei--',mini: true, child: Icon(Icons.remove),),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    wei++;
                                  });
                                } ,heroTag: 'wei++',mini: true, child: Icon(Icons.add),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
              
              
              
              
                ],),
              )
              ),

            Container(
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(
                onPressed: () {
                  double result = wei /pow(height / 100 , 2);
                  print(result.round());

                  Navigator.push(context , MaterialPageRoute(
                    builder: (context) => 
                    bmiRes( 
                    age : age,
                    result : result.roundToDouble() ,
                    isMale : isMale,
                      ), ),);


                },
                child: Text(
                  'Calaculate',
                    style: TextStyle(
                      color: Colors.white,
                       fontSize: 30)),
              ),
            )
          ],
        ));
  }
}
