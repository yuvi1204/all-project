import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Privacy extends StatefulWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child:Image.asset("assets/images/ic_first_grid.png")
                ),
              
              ],
           
              ),
              SizedBox(height: 10),
              Container(
                child: Text("Privacy Policy",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),

              ),
              SizedBox(height: 20,),
              Container(
                child: Text("do not share payment details with\nanyone."),

              ),


          ],
        )
          ),
    );
    
  }
}