import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/Intropage/intro.dart';
import 'package:flutter_e_commerce/SignUp/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
     home: const MyInteroPage(),
    );
  }
}