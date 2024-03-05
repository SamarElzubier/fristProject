// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sampleproject/quote.dart';
import 'package:http/http.dart'; // as http;

class QoutApp extends StatefulWidget {
  const QoutApp({super.key});

  @override
  State<QoutApp> createState() => _QoutAppState();
}

class _QoutAppState extends State<QoutApp> {
  Quote quote = Quote(
    //class object
    content:
        "There is only one way to happiness and that is to cease worrying about things which are beyond the power of our will.",
    auther: "Epictetus",
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/logo/image2.jpg'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(),
                  Text(
                    'QoteText',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
              Text(
                'Auth',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              TextButton(
                  onPressed: () async {
                    Response response = await get(Uri.https(
                        'https://api.forismatic.com/api/1.0/?method=getQuote&format=json&lang=en'));
                    //get('');
                    // var url = Uri.https('https://api.forismatic.com/api/1.0/?method=getQuote&format=json&lang=en');
                    var bodyJson = json.decode(response.body);
                    String cont = bodyJson['quoteText'];
                    String auth = bodyJson['quoteAuthor'];
                    setState(() {
                      quote = Quote(auther: auth, content: cont);
                    });
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
