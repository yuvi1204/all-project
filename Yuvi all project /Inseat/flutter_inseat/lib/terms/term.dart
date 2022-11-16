import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
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
                child: Text("Terms and Conditin",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),

              ),
              SizedBox(height: 20,),
              Container(
                child: Text("you have to pay service charge."),

              ),


          ],
        )
          ),

    );

  }
}