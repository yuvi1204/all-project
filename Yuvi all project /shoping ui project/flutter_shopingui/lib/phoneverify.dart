import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shopingui/homescren.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class MyPhoneVerify extends StatefulWidget {
  const MyPhoneVerify({Key? key}) : super(key: key);

  @override
  State<MyPhoneVerify> createState() => _MyPhoneVerifyState();
}

class _MyPhoneVerifyState extends State<MyPhoneVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
      SizedBox(
        height: 80,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.topCenter,
        child: Text(
          "Phone Verification",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "Enter your code here",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
      ),
      SizedBox(
        height: 80,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.topCenter,
        child: OTPTextField(
          

                       length: 5,
                       width: MediaQuery.of(context).size.width,
                          fieldWidth: 60,
                          style: TextStyle(
                              fontSize: 17
          ),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.box,

                         onCompleted: (pin) {
                                             print("Completed: " + pin);
                                            },
        ) ,
      ),
      SizedBox(height: 80,),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.topCenter,
        child: Text(
          "Didnot you recevied any code?",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
        ),

      ),
      SizedBox(height: 10,),
       TextButton(onPressed: () {}, 
       child: Text('Resend new code',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Colors.red),)),
       SizedBox(height: 20,),
        Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 20),
              height: 60,
              width: 360,
              child: ElevatedButton(
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                onPressed: () {
                  Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => MyHomeScreen()));
                }
              )
               )

    ]))));
  }
}
