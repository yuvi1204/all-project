import 'package:flutter/material.dart';
import 'package:flutter_socialmedia_aap/splacescreen/splacescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media',
      theme: ThemeData(),
      home: const MySplacescreen()
    );
  }
}

