
import 'package:flutter/material.dart';
import 'package:sampleproject/BMI.dart';
import 'package:sampleproject/calculator.dart';
import 'package:sampleproject/homework.dart';
class Navigate extends StatelessWidget {
  const Navigate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
              ElevatedButton(onPressed:(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BodyMath()));
              }), child: Text('BMI')),
              ElevatedButton(onPressed: (() {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Calculate())); //هذا النوع يدحل ويرجع عادي للصفحه 
              }), child: Text('calculator')),
              ElevatedButton(onPressed: (() {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeWork()));
              }),//هذا النوع من النافيقيتر يجل الصفحة ولا يرجع للخلف مثل تسجيل الدخول للايميل
               child: Text('my profile'))
            ],
          ),

      )),
    );
  }
}