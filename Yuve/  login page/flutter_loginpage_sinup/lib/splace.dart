import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_loginpage_sinup/homepage.dart';
import 'package:flutter_loginpage_sinup/loginpage.dart';

class Mysplace extends StatefulWidget {
  const Mysplace({Key? key}) : super(key: key);

  @override
  State<Mysplace> createState() => _MysplaceState();
}

class _MysplaceState extends State<Mysplace> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),() =>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>MyLoginpage())) );
  }
  Widget build(BuildContext context) 
  {
      return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children:<Widget>[
          Container(
            decoration: BoxDecoration(
             // backgroundBlendMode: ,
              //color: Color.fromARGB(255, 230, 73, 68),
             
                        color: Color.fromARGB(249, 7, 7, 7),
            //  gradient: LinearGradient(colors:[Color.fromARGB(255, 2, 2, 2),Color.fromARGB(255, 2, 2, 2)],
           //   begin: Alignment.centerRight,
           //   end: Alignment.centerLeft
              
              )
            ),

         // ),
          Center(
            
            child: Container(
              
              child: Image.asset(
                  "assets/images/y2.png",
                  fit: BoxFit.fill,
                  
                ),
            ),
          )
          
      ],)
    );
    
   }
}
  
