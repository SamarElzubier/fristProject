// ignore_for_file: prefer_const_constructors, unnecessary_string_escapes

import 'package:flutter/material.dart';
class Photo extends StatelessWidget {
  const Photo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my photo',
        style: TextStyle(
          fontSize: 30,
          color: Color.fromARGB(255, 176, 150, 194),
        ),
        
        ),centerTitle: true,
      backgroundColor: Color.fromARGB(255, 150, 48, 187),
      leading: Icon(Icons.add_a_photo),
      ),backgroundColor: Color.fromARGB(255, 153, 89, 191),
      body: Center(
        child: Image.asset('assets/logo/image2.jpg')),
        //(image: AssetImage('C:\Users\Stor\Downloads\flutter\sampleproject\images\photo.jpg')),),

    );
  }
}