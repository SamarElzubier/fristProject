

// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sampleproject/icon.dart';
class Textf extends StatefulWidget {
  const Textf({super.key});

  @override
  State<Textf> createState() => _TextfState();
}

class _TextfState extends State<Textf> {
  String result='';
  double h =0;
  double w = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MBI",
        style: TextStyle(fontSize: 30,fontFamily: 'flut',
        color: Color(0xff35374B)),
        ),centerTitle: true,
        backgroundColor: Color.fromARGB(255, 86, 118, 136),
        leading: Icon(Icons.backspace,color: Color(0xff35374B),),
      
      ),
      
      body: SafeArea(
        child: Container(padding: EdgeInsets.all(20),
          child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                 // child: FaIcon(Icons.man_outlined),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),color: Colors.pink
                  ),
                ),
                 Container(
                 // child: FaIcon(Icons.man_outlined),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),color: Colors.pink
                  ),
                ),
              ],
            ),
            Spacer(),
            Text('enter height in CM'),
            Container(height: 70,
             decoration: 
              BoxDecoration(
              //color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(40),
            ),
              child: TextField(
                style: TextStyle(color: Colors.green),
                cursorColor: Colors.amber,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,decoration: InputDecoration(
                  hintText: 'write you height',prefixIcon: Icon(Icons.man),
                  suffixIcon: Icon(Icons.access_alarm),
                  border:
                  //InputBorder.none,
                  OutlineInputBorder(
                  //  borderRadius: BorderRadius.circular(30)
                 )
               ),
                onChanged: (String value) {
                  h= double.parse(value);
                  
                },
              ),
            ),
            SizedBox(height: 30,),
            Text('enter weight in KG'),
            Container(height: 70,
            
              decoration: 
              BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(40),
            ),
              child: TextField(
                onChanged: (String value) {
                  w= double.parse(value);
                  },
                keyboardType: TextInputType.number,decoration: InputDecoration(
                  hintText: 'write you weight ',
                  //border: InputBorder.none
                ),
                
              ),
            ),
            SizedBox(height: 30,),
            Text('your BMI is :'),
            SizedBox(height:30),
            Text(result),
            Spacer(),
            GestureDetector(onTap: () {setState(() {
              
            });
              double h2=h*h/10000;//cm to metar
              double BMI =w / h2;//rule of bmi
              result=BMI.toStringAsFixed(2); //  بحولا الى استرينق لاني اصلا كاتبة في ال تكست فيلد
              print(result);
              print(h);
              print(w);
            },
              child: Container(child: Text('calculte')))
          ],
                ),
        )),
      );
  }
}