import 'package:flutter/material.dart';
import 'home_page.dart';
import 'dart:async';
 
void main() {
 runApp( MaterialApp(
   debugShowCheckedModeBanner: false,
   home: MyApp(),
 ));
}
 
class MyApp extends StatefulWidget {
 @override
 _MyAppState createState() => new _MyAppState();
}
 
class _MyAppState extends State<MyApp> {
 @override
 void initState() {
   super.initState();
   Future.delayed(
     Duration(seconds: 4),
     () {
       Navigator.push(
         context,
         MaterialPageRoute(
           builder: (context) => HomePage(),
         ),
       );
     },
   );
 }
 
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Image.asset('assets/wo.png'),
     ),
   );
 }
}
 
 

