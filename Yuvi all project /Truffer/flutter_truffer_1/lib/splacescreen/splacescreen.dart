import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_truffer_1/Log_IN/log_in.dart';

class MySplace extends StatefulWidget {
  const MySplace({Key? key}) : super(key: key);

  @override
  State<MySplace> createState() => _MySplaceState();
}

class _MySplaceState extends State<MySplace> {

  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) =>MyLogin() )));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                  Padding(
                        padding: EdgeInsets.only(top: 0),
                         child:
                           Container(  
                              height: 622  ,        
                            child: Image.asset("assets/images/backg.png", width: MediaQuery.of(context).size.width,fit: BoxFit.fill),
                           )       
                  ),    
                   Padding(
                        padding: EdgeInsets.only(top: 50,left: 50),
                         child:
                           Container(             
                            child: Image.asset("assets/images/logo.png", width: MediaQuery.of(context).size.width,),
                           )       
                  ),    

                    Padding(
                        padding: EdgeInsets.only(top: 250,),
                         child:
                           Container(             
                            child: Image.asset("assets/images/delivery.png", width: MediaQuery.of(context).size.width,),
                           )       
                  ),   
              ],
            )
          ],
        )
        ),


    );
    
  }
}