  
import 'package:flutter/material.dart';
Widget addButton({
  Color background =Colors.deepPurple,
  double widt =20,
  @required String? text,
}
)=> Container(
  color: background,
  height: widt,
  child:ElevatedButton(
  onPressed: (() {
  print('done');
}),child: Text(text!),//to string
)
);
Widget myButton ()=> 
ElevatedButton(onPressed: (() {
  
}), child: Text('back'));
// Container(
//   color: background,
//   width: widt,
//   child: MaterialButton(child: Text('log in'),
//     onPressed: (() {
    
//   }))


//
// Widget com()=>
// ElevatedButton(onPressed: (() {
  // }), child: Text('ok'));  بشكل عام ومن ثم بضيف اسم الويدجت فقط

