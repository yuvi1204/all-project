import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test_2/Login/login.dart';

class MySplacescreen extends StatefulWidget {
  const MySplacescreen({Key? key}) : super(key: key);

  @override
  State<MySplacescreen> createState() => _MySplacescreenState();
}

class _MySplacescreenState extends State<MySplacescreen> {
  void initState() {
  super.initState();
  Timer(Duration(seconds: 5),
          ()=>Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
              (context) => MyLogingpage()
          )
      )
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea
      (
        child:  Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0),
                child:
                Container(             
                  child: Image.asset("assets/images/first.png", width: MediaQuery.of(context).size.width,),
                )       
                ),        
                Padding(
                  padding: const EdgeInsets.only(top: 228),
                  child: Container(                 
                    child: Image.asset("assets/images/ic_background.png",width: MediaQuery.of(context).size.width,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset("assets/images/newlogo.png",height: 200,width: 200,),
                  ),
                ),               
            ],
          )
        ],
        )
        ),
    );
    
  }
}