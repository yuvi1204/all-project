import 'package:flutter/material.dart';
import 'package:flutter_pectise_1/Welcomepage/welcome.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     final textTheme=Theme.of(context).textTheme;
    return MaterialApp(
    
      theme: ThemeData(
       
       primarySwatch: Colors.blue
        // textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(bodyText1: GoogleFonts.montserrat(textStyle: textTheme.bodyText1))
        
      ),
       debugShowCheckedModeBanner: false,
      home: const MyWelcomePage(),
    );
  }
}
