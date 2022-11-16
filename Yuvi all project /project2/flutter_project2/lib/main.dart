import 'package:flutter/material.dart';
import 'package:flutter_project2/project.dart';

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
      home: const   Myname(),
    
      
    );
  }
}
