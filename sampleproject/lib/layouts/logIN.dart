
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

 import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sampleproject/shared/components.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int pass=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Log in',style: TextStyle(fontSize: 30),),
        centerTitle: true,
        leading: IconButton(onPressed: (() {
          Navigator.pop(context);
        }), icon:Icon(Icons.arrow_back)),
        backgroundColor: Colors.deepPurple.shade400,
      ),
      body: SafeArea(
        child:Column(
          
          children: [
            SizedBox(height: 200,),
           Row(mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Text
            (' Your email :'),]),
            TextField(
              keyboardType: TextInputType.emailAddress, decoration: InputDecoration(suffixIcon: Icon(Icons.email_outlined),
                hintText: '  Enter your email',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),)
            ),
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Text(' Your email :'),]),
            TextField(
              onChanged: (value) {
                pass = int.parse(value);
              },
            obscureText: true,
             obscuringCharacter: '*',
              keyboardType: TextInputType.number, decoration: InputDecoration(suffixIcon: FaIcon(FontAwesomeIcons.eyeSlash),
                hintText: 'Enter your password',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),)
            ),
            SizedBox(height: 70,),
            ElevatedButton(onPressed: (() {
              print('good');
            }), child: Text('log in')),
            SizedBox(height: 20,),
            addButton(
              text: 'forget my password'
            ),
            SizedBox(height: 20,),
            addButton(text: 'creat first account'),
            Spacer(),
            myButton()
          ],
        ) 
      ),
    );
  }
}