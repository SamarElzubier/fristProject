// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Row1 extends StatelessWidget {
  const Row1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Row(mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color.fromARGB(255, 224, 76, 2),
              height:30,
              width: 50,
            ),Spacer(),
            Container(
              color: Colors.blue,
              height: 100,
              width: 300,),
            SizedBox(width: 40,),  
          ],
        ),
      ),
    );
  }
}