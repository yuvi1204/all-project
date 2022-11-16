import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_socialmedia_aap/Firstpage/first.dart';

class MySplacescreen extends StatefulWidget {
  const MySplacescreen({Key? key}) : super(key: key);

  @override
  State<MySplacescreen> createState() => _MySplacescreen();
}

class _MySplacescreen extends State<MySplacescreen> {
   void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) =>MyFirst())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
        "assets/images/splace.jpg"
        ),
           fit: BoxFit.cover,
           //colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.darken)
           )
      ),
      child: Scaffold(
         backgroundColor: Colors.transparent,
         body: Container(
          child: SafeArea(
            
            child: SingleChildScrollView(
              child: Column(
                 children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 60,vertical: 400),
                  child: Container(
                      
                                    width: 250,
                                    height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/y icon.png",) ,
                                    fit: BoxFit.fill
                                                        ),

                              ),
                  ),
                  
                  )
                 ],
              )
              )
            
            )
          
          ),

      ),

    );

    
  }
}