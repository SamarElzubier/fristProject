// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:sampleproject/column.dart';

class HomeWork extends StatelessWidget {
  const HomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my profile',style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 13, 10, 10),fontFamily: 'flut'
       // backgroundColor: Colors.amber
        ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 218, 216, 169),
        leading: Icon(Icons.add_a_photo),
        
      ),
      body: SafeArea(
        child: 
       Center(
        child: Container(
         color: Color.fromARGB(255, 239, 235, 200),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage:AssetImage('assets/logo/image2.jpg',)
                ,radius: 90,),
                Text('samar elzubier', style: TextStyle(fontFamily: 'flu', fontSize: 30),
                ),
             Text('samarmaruod@gmail.com', style: TextStyle(fontFamily: 'flu',fontSize: 20),),
             SizedBox(height: 170),
             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
             children: [Container( 
        decoration: BoxDecoration(
           boxShadow: [BoxShadow(color: Color.fromARGB(255, 118, 118, 118),
           offset: Offset(-10, 10),
           blurRadius:25,
            ),
             ] ),

          child: FaIcon(Icons.facebook ,color: Color.fromARGB(255, 38, 44, 222),
                size: 50, ),
             ),
              
              FaIcon(Icons.telegram, size: 50,color: Color.fromARGB(255, 44, 134, 198),
        shadows: [BoxShadow(color: Color.fromARGB(255, 4, 10, 12),offset: Offset(-10, 10),
        blurRadius: 25,blurStyle:BlurStyle.solid)],),
        
        FaIcon(Icons.messenger,size: 50,
        color: Color.fromARGB(255, 9, 134, 38),shadows: [BoxShadow(color: const Color.fromARGB(255, 5, 4, 4),
        offset: Offset(-10, 10), 
        blurRadius: 30,blurStyle: BlurStyle.solid), 
        
        ],)
            ],),
            SizedBox(height: 30,),
 Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Text("facebook",style: TextStyle(fontFamily:'flutt' ),),
    Text("telegram",style: TextStyle(fontFamily: 'flutt'),),
    Text("message",style: TextStyle(fontFamily: 'flutt'),)
  ],
 )
                    
  ] ),
     ) )));
    }}