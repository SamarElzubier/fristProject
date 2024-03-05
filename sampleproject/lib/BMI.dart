// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sampleproject/icon.dart';

class BodyMath extends StatefulWidget {
  const BodyMath({super.key});

  @override
  State<BodyMath> createState() => _BodyMathState();
}

class _BodyMathState extends State<BodyMath> {
  String result = '';
  double h = 0.h;
  double w = 0.h;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI calculator'),
        leading: IconButton(
          onPressed: (() {
            Navigator.pop(context); //pop navigation for back
          }),
          icon: Icon(Icons.arrow_back_rounded),
        ),
        backgroundColor: Color(0xff944E63),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.h),
          // color: Color(0xff),
          child: Column(
            children: [
              //SizedBox(height: 50.h),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                FaIcon(FontAwesomeIcons.personDress,
                    size: 90.h, color: Color(0xffFF7ED4)),
                FaIcon(
                  FontAwesomeIcons.person,
                  size: 90.h,
                  color: Colors.blue.shade300,
                )
              ]),
              //SizedBox(height: 30.h,),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Text(
                ' Height in CM',
                style: TextStyle(color: Color(0xffB47B84), fontSize: 20.sp),
              ),
              TextField(
                // obscureText: true,
                //obscuringCharacter: '*',
                onChanged: (value) {
                  h = double.parse(value);
                },
                keyboardType: TextInputType.number,
                cursorColor: Color(0xffFFE7E7),
                decoration: InputDecoration(
                    hintText: 'write your height',
                    hintStyle:
                        TextStyle(color: Colors.blueGrey, fontSize: 11.sp),
                    suffixIcon: Icon(Icons.height),
                    suffixIconColor: Colors.blueGrey,
                    border:
                        //UnderlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.w),
                    )),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                ' Weight in KG',
                style: TextStyle(color: Color(0xffB47B84), fontSize: 20.sp),
              ),
              TextField(
                onChanged: (String value) {
                  w = double.parse(value);
                },
                keyboardType: TextInputType.number,
                cursorColor: Color(0xff35374B),
                decoration: InputDecoration(
                    hintText: 'write your weight',
                    hintStyle:
                        TextStyle(color: Colors.blueGrey, fontSize: 11.sp),
                    suffixIcon: Icon(Icons.monitor_weight_outlined),
                    suffixIconColor: Colors.blueGrey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.w),
                    )),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text('your BMI is :',
                  style: TextStyle(color: Colors.white, fontSize: 12.sp)),
              SizedBox(
                height: 30.h,
              ),
              Text(result),
              Spacer(),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {});
                    double h2 = h * h / 10000;
                    double BMI = w / h2;
                    result = BMI.toStringAsFixed(2);
                  }),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFFE7E7),
                      foregroundColor: Color(0xff944E63),
                      side: BorderSide(color: Colors.brown.shade400)),
                  child: Text(
                    'calculate',
                    style: TextStyle(color: Color(0xff944E63), fontSize: 10.sp),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
