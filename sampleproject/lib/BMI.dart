
// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sampleproject/icon.dart';
class BodyMath extends StatefulWidget {
  const BodyMath({super.key});

  @override
  State<BodyMath> createState() => _BodyMathState();
}

class _BodyMathState extends State<BodyMath> {
  String result ='';
  double h = 0;
  double w = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text('calculate BMI') ,leading: Icon(Icons.arrow_back_rounded),backgroundColor: Color(0xff944E63),
        centerTitle: true,
      ),
      body: SafeArea(
        
          child: Container(
            padding: EdgeInsets.all(20),
           // color: Color(0xff),
            child: Column(
                children: [
                SizedBox(height: 50,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                  FaIcon(FontAwesomeIcons.personDress,size: 90,color: Color(0xffFF7ED4)),
                FaIcon(FontAwesomeIcons.person,size: 90,color: Colors.blue.shade300,
                  )]),
                  SizedBox(height: 30,),
                  Text(' Height in CM',style: TextStyle (color: Color(0xffB47B84),fontSize: 20),),
                  TextField(
                    onChanged: (value) {
                      h =double.parse(value);
                    },
                    keyboardType: TextInputType.number,cursorColor: Color(0xffFFE7E7),
                    decoration: InputDecoration(
                      hintText: 'write your height',hintStyle:TextStyle(color: Colors.blueGrey),
                       suffixIcon: Icon(Icons.height),suffixIconColor: Colors.blueGrey,
                      border: 
                      //UnderlineInputBorder(borderRadius: BorderRadius.circular(30)),
                      OutlineInputBorder( 
                        borderRadius: BorderRadius.circular(30),
                         )
                    ),
              ),
                  SizedBox(height: 30,),
                  Text(' Weight in KG',style: TextStyle (color: Color(0xffB47B84),fontSize: 20),),
                  TextField(
                    onChanged: (String value) {
                      w = double.parse(value);
                    },
                    keyboardType: TextInputType.number,cursorColor: Color(0xff35374B),
                    decoration: InputDecoration(
                      hintText: 'write your weight',hintStyle: TextStyle(color: Colors.blueGrey),
                       suffixIcon: Icon(Icons.monitor_weight_outlined),suffixIconColor: Colors.blueGrey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                     
                      )
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text('your BMI is :',style: TextStyle(color: Colors.white),),
                  SizedBox(height: 130,),
                  Text(result),
                  Spacer(),
                 ElevatedButton(onPressed: (() {
                   setState(() {
                     
                   });
               double h2 = h*h/1000;
               double BMI = w/h2;
               result =BMI.toStringAsFixed(2);
                 }),
                 style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFFE7E7),)
,                  child: Text('calculate',style: TextStyle(color: Color(0xff944E63),),
                 )
                 
                 ),
                  ],
              ),
            ),
          ),
         
    );
  }
}