import 'package:flutter/material.dart';
import 'package:flutter_inseat/Splace/splace.dart';
import 'package:flutter_inseat/loginpage/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home:Login()
    );
  }
}
