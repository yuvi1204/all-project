import 'package:flutter/material.dart';
import 'package:flutter_project3/main.dart';
import 'package:flutter_project3/ui/splashscreen/splashcreen1.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loging App',
      
      theme: ThemeData(
        
      ),
       
        home:  Mysplashscreen1(),
      
    );
  }
}