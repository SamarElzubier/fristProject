// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class column1 extends StatelessWidget {
  const column1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
       // child:Center(
        
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: [
       Container(
        color: Colors.amber,
        height: 20,
        width: 40,
       ) ,
       SizedBox(height: 30,),
       Container(color: Colors.blue,
       height: 100,
       width: 200,),
       Spacer(),
       Container(
        color: Colors.amberAccent,
        height: 60,
        width: 50,
       )
      ],
     ), ),
      
    );
  }
}