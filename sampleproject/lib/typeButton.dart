
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//DropdownButton
class Butto extends StatelessWidget {
  const Butto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: OutlinedButton(onPressed: (() => print('done')), 
            child: Text('click here')),
            ),
          
          TextButton(onPressed: (() => print('ok')),
           child: Text('click here')),
          
           ElevatedButton(onPressed: (() => print('true')),
            child: Text('click here')),

            OutlinedButton.icon(onPressed: (() {
              print('yes');
            }), icon: Icon(Icons.abc), label: Text('click here')),
            ElevatedButton.icon(icon: Icon(Icons.abc),style:ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
          foregroundColor: Colors.red,backgroundColor: Colors.amber ,
        shadowColor: Colors.green,
        shape: LinearBorder(side: BorderSide(width: 20),),
          side: BorderSide(color: Colors.green),
            ) ,
              onPressed: (() => print('good')), label: Text('click here')),
              //اذا عملت ايكون مع البتون لازم اغير الجايلد الى ليبل
              OutlinedButton.icon(onPressed: (() => print('done')), icon: Icon(Icons.input), 
              style: OutlinedButton.styleFrom(foregroundColor:Colors.red ,
               side: BorderSide(color: Colors.green)),
              label: Text('click here'))
              ],
        ),
       ),
       floatingActionButton: FloatingActionButton(onPressed: (() => print('good')),child: Icon(Icons.add),),
    );
  }
}