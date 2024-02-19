// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Faicon extends StatelessWidget {
  const Faicon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('just tries',
        style: TextStyle(fontSize: 20,fontFamily: 'flu',color: Color.fromARGB(255, 7, 7, 5))
        ,),
        centerTitle: true, backgroundColor: Color.fromARGB(255, 236, 234, 135),leading: Icon(Icons.check_circle),
        ),backgroundColor: Color.fromARGB(255, 231, 224, 205),
      body: Center(
        
        child: Container(
         padding: EdgeInsets.all(30),
        //   height: 300,
        //  width: 200,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 250, 250, 162),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [BoxShadow(color: Color.fromARGB(255, 209, 207, 112),
           offset: Offset(-20, 30),
           blurRadius:40,
            ),
             ] ),
      child: FaIcon(Icons.facebook,size: 40,color: Color.fromARGB(255, 11, 95, 213),))
      
            // child: Text("welcome to my project",style: TextStyle(fontSize: 30, fontFamily:  'flu',),),
        )
      
      )
        
       
    ;
  }
}