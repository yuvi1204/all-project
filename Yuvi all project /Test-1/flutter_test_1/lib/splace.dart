import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_1/loginscreen.dart';
import 'package:flutter_test_1/splace.dart';

class Mysplacescreen extends StatefulWidget {
  const Mysplacescreen({Key? key}) : super(key: key);

  @override
  State<Mysplacescreen> createState() => _MysplacescreenState();
}

class _MysplacescreenState extends State<Mysplacescreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyLoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 248, 236, 231),
        body: Center(
          //  width: double.infinity,
          // height: double.infinity,
          // decoration: BoxDecoration(
          //  gradient: LinearGradient(
          //    begin: Alignment.topRight,
          //    end: Alignment.bottomLeft,

          //    colors: [Color(0xFFFF800B),Color(0xFFCE1010),]
          // ),
          //  ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/ic_logo_icon.png",
                    height: 300.0,
                    // width: 300.0,
                  ),
                ],
              ),
            ],
            // ),
          ),
        ));
  }
}
