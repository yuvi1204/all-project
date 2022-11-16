import 'package:flutter/material.dart';
import 'package:flutter_test_2/Splacescreen/splacescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: const MySplacescreen(),
    );
  }
}
