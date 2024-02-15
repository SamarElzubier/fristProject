// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('myApp',
          style: TextStyle(fontSize: 40,color: Color.fromARGB(255, 126, 101, 175) ),
          
         ),
         centerTitle: true,
         backgroundColor: Color(0xffB784B7),
         leading: Icon(Icons.favorite, color: Colors.red,),
        ),
        body: Center(child: Text('welcome',
        style: TextStyle(fontSize: 50,color: Color(0xffE493B3)),)),
      
      ),
      
    );
  }
}
