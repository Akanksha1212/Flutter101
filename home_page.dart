import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
 @override
 MyHomePage createState() => new MyHomePage();
}
 
class MyHomePage extends State<HomePage> {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Text('Hi'),
     ),
   );
 }
}
