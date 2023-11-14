import 'package:flutter/material.dart';




class bmiRes extends StatelessWidget 


{


  late double result ;
  late bool isMale;
  late int age;

  bmiRes({
    required this.age,
    required this.result,
    required this.isMale,
  });



  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(
          backgroundColor: Colors.white10,
          elevation: 0.5,
          titleSpacing: 15,
          title: const Row(
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
                'Result',
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
       

       body: Center(
         child: Column(
       
          mainAxisAlignment: MainAxisAlignment.center,
       
          children: [
       
            Text('Gender :${  isMale ? 'Male' : 'Female' }  ',  style: TextStyle(
                        color: Colors.black,
                         fontSize: 30)
                         ),
           
           
            Text('Result : ${result.round()} ' ,style: TextStyle(
                        color: Colors.black,
                         fontSize: 30)),
       
            Text("Age : ${age}" , style: TextStyle(
                        color: Colors.black,
                         fontSize: 30)),
       
          ]
          ),
       ),
    );
  }
}