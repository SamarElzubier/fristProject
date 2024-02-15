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
          style: TextStyle(fontSize: 40,color: Color(0xffC68484) ),
          
         ),
         centerTitle: true,
         backgroundColor: Color(0xffB784B7),
         leading: Icon(Icons.favorite, color: Color(0xff9B4444)),
        ),
        body: Center(child: Text('welcome',
        style: TextStyle(fontSize: 50,color: Color(0xffE493B3)),)),
      
      ),
      
    );
  }
}
