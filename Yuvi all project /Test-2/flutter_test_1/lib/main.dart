import 'package:flutter/material.dart';
import 'package:flutter_test_1/signin/signin.dart';
import 'package:flutter_test_1/splacescreen/splacescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: const MySplacescreen()
      );
    
  }
}