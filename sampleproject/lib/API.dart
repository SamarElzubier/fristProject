// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:collection';
// import 'dart:convert';
// import 'dart:html';
// import 'dart:io';
// import 'dart:js_interop';
// import 'dart:js_interop_unsafe';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart';

// class MyApi extends StatefulWidget {
//   const MyApi({super.key});

//   @override
//   State<MyApi> createState() => _MyApiState();
// }

// class _MyApiState extends State<MyApi> {
//   QuoteElement quote = QuoteElement(
//       Content: "Trust your self.you know more than you think you do",
//       author: "Benjamin Spock");
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.all(20),
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("assets/logo/image2.jpg"),
//                 fit: BoxFit.cover)),
//         child:
//             Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//           Spacer(),
//           Text(
//             'QoteText',
//             style: TextStyle(color: Colors.black),
//           ),
//           Spacer(),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Author",
//                 style: TextStyle(color: Colors.black),
//               )
//             ],
//           ),
//           Spacer(),
//           TextButton(onPressed: ()async{
//             Response response =
//             var Bodyjson =JS;
//             String cont = Bodyjson['quote Content'];
//             String auth = Bodyjson['quote Author']; 
//             setState(() {
//               quote = Quote(author:auth,content:cont);
//             });       
//               }, child: Text('next'))
//         ]),
//       ),
//     );
//   }
// }
