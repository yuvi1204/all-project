import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_1/blabbon/blabbon.dart';
import 'package:flutter_test_1/signin/signin.dart';

class MySplacescreen extends StatefulWidget {
  const MySplacescreen({Key? key}) : super(key: key);

  @override
  State<MySplacescreen> createState() => _MySplacescreenState();
}

class _MySplacescreenState extends State<MySplacescreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyBlabbon())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
        "assets/images/splash_bg.png"
        ),
           fit: BoxFit.cover,
           colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.darken)
           )
      ),
      child: Scaffold(
         backgroundColor: Colors.transparent,
         body: Container(
          child: SafeArea(
            child: SingleChildScrollView(
              child:Column(
                children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 200),
                  child: Container(
                            
                                width: 350,
                                  height: 100,
                                  
                                  decoration: BoxDecoration(
                                    
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(
                                    image: AssetImage("assets/images/logo.png",) ,
                                    fit: BoxFit.fill
                                                        ),
                                                          
                                          ),
                                          

                            ),
                )
                ],

              ) )
          ),
         ),

      ),

    );
    
  }
}