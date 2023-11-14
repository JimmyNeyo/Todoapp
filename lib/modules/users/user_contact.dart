import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';







class Contacts extends StatelessWidget {
  

  List<userContact> abouthim =[ 
      userContact(id: 1, phone: '204854524', name: 'Samy acsd '),
      userContact(id: 2, phone: '204854524', name: 'Ramt acsd '),
      userContact(id: 3, phone: '204854524', name: 'fart acsd '),
      userContact(id: 4, phone: '204854524', name: 'nemo acsd '),
      userContact(id: 5, phone: '204854524', name: 'jihi acsd '),
      userContact(id: 6, phone: '204854524', name: 'Samy acsd '),
      userContact(id: 7, phone: '204854524', name: 'Ramt acsd '),
      userContact(id: 8, phone: '204854524', name: 'fart acsd '),
      userContact(id: 9, phone: '204854524', name: 'nemo acsd '),
      userContact(id: 10, phone: '204854524', name: 'jihi acsd '),
      userContact(id: 11, phone: '204854524', name: 'Samy acsd '),
      userContact(id: 12, phone: '204854524', name: 'Ramt acsd '),
      userContact(id: 13, phone: '204854524', name: 'fart acsd '),
      userContact(id: 14, phone: '204854524', name: 'nemo acsd '),
      userContact(id: 15, phone: '204854524', name: 'jihi acsd '),
  ];

  

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
              icon:const CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.person_3,
                    size: 25.0,
                    color: Colors.white,
                  ))),

        ],
      ),
   
        body: 
        ListView.separated(
          itemBuilder: (context ,index)=> buildItemContact(abouthim[index]),
          separatorBuilder: (context ,index) =>const  SizedBox(height: 0.0),
          itemCount: abouthim.length,
          ),
    );

  }





Widget buildItemContact( userContact abouthim  ) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
             color: Colors.grey[400], 
            ),
            child: Row(
              children: [
                
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 25.0,
                    child :Text('${abouthim.id}', style: const TextStyle(fontSize: 20 , fontWeight: FontWeight.bold ) ,)
                
                  ),
                ),
               const SizedBox(width: 20,),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
          
                  // Text('${abouthim.name}' , style: const TextStyle(fontSize: 30)),
                  Text(abouthim.name , style: const TextStyle(fontSize: 30)),
                  const SizedBox(height: 3.0,),
                  Text(abouthim.phone , style: const TextStyle(fontSize: 20)),
          
                   
          
               ],)
              
              ],
            ),
          ),
        );



}