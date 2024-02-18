import 'package:flutter/material.dart';
class Photos extends StatelessWidget {
  const Photos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('my photo',
        style: const TextStyle(
          fontSize: 30,
          color: Color.fromARGB(255, 176, 150, 194),
        ),
        
        ),centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 150, 48, 187),
      leading: const Icon(Icons.add_a_photo),
      ),backgroundColor: const Color.fromARGB(255, 190, 182, 195),
      body: Center(
        child: Container(height: 200,
        width: 450,color: const Color.fromARGB(255, 197, 171, 214),
          child: const Image(image:AssetImage("assets/logo/image2.jpg"),
          fit:BoxFit.contain),
        ),
        

    ));
  }
}