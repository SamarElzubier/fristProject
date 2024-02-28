// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sampleproject/column.dart';
import 'package:sampleproject/icon.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  var baseCol= Color.fromARGB(255, 225, 199, 91);
  var sideCol=Colors.black;
  var side2=Colors.grey;
  var equal=Colors.green;

  double height=70;
  double width=70;

String result="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (() {
        Navigator.pop(context);//لتشغيل الايقون
      }), icon: Icon(Icons.arrow_back),),
        title: Text("Calculator", style: TextStyle(fontSize: 20,fontFamily: 'flut'),),centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea( 
        child: 
      Container(
        
        padding: EdgeInsets.all(30),
       color: Color(0xffFEECE2),
        
        child: Column(
          
          children: [
          SizedBox(height: 130,),
          
          
          Row(
           mainAxisAlignment: MainAxisAlignment.end,
            
            children: [
              Container(
                
                child: Text(result,style: TextStyle(fontSize: 40,),),
              ),
            ],
          ),
          Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            GestureDetector(
              onTap: () { setState(() {
                
              });
                result="";
                print(result);
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration( color: baseCol, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text('C',
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 208, 32, 32),), )),
            )
          ),
          GestureDetector(
              onTap: () {
                setState(() {});
                result=result+"/";
                print(result);
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: side2, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text("/",
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 10, 10, 10),),
               )),
            )
          ),
          GestureDetector(
              onTap: () {
                setState(() {});
                result=result+"*";
                print(result);
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: side2, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text("x",
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 10, 10, 10),),
               )),
            )
          ),
          GestureDetector(
              onTap: () {
                setState(() {
                   });
            result=result.substring(0,result.length - 1);
                                //(start.length-1)
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: baseCol, borderRadius: BorderRadius.circular(30)),
              child: Center(child:Icon(Icons.backspace,color: Colors.white,)
               )),
            )
          
         ] 
          
          ),

          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            GestureDetector(
              onTap: () { 
                setState(() {});
                result=result+"1";
                print(result);
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: side2, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text('1',
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 14, 14, 14),), )),
            )
          ),
          GestureDetector(
              onTap: () {
                setState(() {});
                result=result+"2";
                print(result);
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: side2, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text("2",
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 10, 10, 10),),
               )),
            )
          ),
          GestureDetector(
              onTap: () {
                setState(() {});
                result=result+"3";
                print(result);
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: side2, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text("3",
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 10, 10, 10),),
               )),
            )
          ),
          GestureDetector(
              onTap: () {
                setState(() {});
                result=result+"-";
            
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: baseCol, borderRadius: BorderRadius.circular(30)),
              child: Center(child:Icon(Icons.minimize,color: Colors.white,)),
               ),
            
          ),
            ],
            
         ),
SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            GestureDetector(
              onTap: () {
                setState(() {});
                result=result+"4";
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: side2, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text('4',
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 14, 14, 14),), )),
            )
          ),
          GestureDetector(
              onTap: () {
                setState(() {});
                result=result+"5";
                print(result);
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: side2, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text("5",
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 10, 10, 10),),
               )),
            )
          ),
          GestureDetector(
              onTap: () {
                setState(() {});
                result=result+"6";
                print(result);
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: side2, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text("6",
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 10, 10, 10),),
               )),
            )
          ),
          GestureDetector(
              onTap: () {
                setState(() {});
                result=result+"+";
                print(result);
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: baseCol, borderRadius: BorderRadius.circular(30)),
              child: Center(child:Icon(Icons.add,color: Colors.white,)),
               ),
            
          ),
            
         ]),
         SizedBox(height: 20,
         ),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            GestureDetector(
              onTap: () {
                setState(() {});
                result=result+"7";
                print(result);
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: side2, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text('7',
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 14, 14, 14),), )),
            )
          ),
         
          GestureDetector(
              onTap: () {
                setState(() {});
                result=result+"8";
                print(result);
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: side2, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text("8",
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 10, 10, 10),),
               )),
            )
          ),
         
          GestureDetector(
              onTap: () {
                setState(() {});
                result=result+"9";
                print(result);
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: side2, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text("9",
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 10, 10, 10),),
               )),
            )
          ),
GestureDetector(
              onTap: () {
                setState(() {});
                result=result+".";
                print(result);
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: baseCol, borderRadius: BorderRadius.circular(30)),
              
             child: Center(child:
               Text(".",
              style: TextStyle(fontSize: 40, color: Colors.white, ),
              )),
            )
          ),



         ]),

                SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            GestureDetector(
              onTap: () {
                setState(() {});
                result=result+"(";
                print(result);
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: side2, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text('(',
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 14, 14, 14),), )),
            )
          ),
         GestureDetector(
              onTap: () {
                setState(() {});
                result=result+"0";
                print(result);
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: side2, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text("0",
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 10, 10, 10),),
               )),
            )
          ),
          GestureDetector(
              onTap: () {
                setState(() {});
                result=result+")";
                print(result);
              },
            
           child: Container(
               height: height,
               width: width,
              decoration: BoxDecoration(color: side2, borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text(")",
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 10, 10, 10),),
               )),
            )
          ),
           
             GestureDetector(
              onTap: () {setState(() {
                
              });
              try {
      Parser p = Parser();
      Expression exp = p.parse(result);
      ContextModel cm = ContextModel();
      result = "${exp.evaluate(EvaluationType.REAL, cm)}";
      
    } catch (e) {
      result = "Error";
    }
           },
                child: Container(
                   height: height,
                    width: width,
                      decoration: BoxDecoration(color: equal, borderRadius: BorderRadius.circular(30)),
                      child: Center(child: Text("=",
                      style: TextStyle(fontSize: 30, color: Colors.white),))),
          ) 
             ]),
              ])
           )
        )
        );
     }
     }