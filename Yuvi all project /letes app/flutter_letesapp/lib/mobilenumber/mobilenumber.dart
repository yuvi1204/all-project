import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';


class MyMobilenumber extends StatefulWidget {
  const MyMobilenumber({Key? key}) : super(key: key);

  @override
  State< MyMobilenumber> createState() => _MyMobilenumberState();
}

class _MyMobilenumberState extends State<MyMobilenumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
        "assets/images/1.png"
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
            child: Column(
              children: [
                    SizedBox(height: 100,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 150,),
                  //  alignment: Alignment.topCenter,
                    child: Text(
                      "OTP  ",
                     textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
                    ),
                    
                  ),
                
                Container(
                  height: 30,
                  child:Text("Please enter the OTP sent to your mobile number",
                     textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),)

                ),
              SizedBox(height: 20,),
              Container(
                              child: OTPTextField(
                              length: 5,
                              width: MediaQuery.of(context).size.width,
                              fieldWidth: 40,
                              style: TextStyle(
                                fontSize: 17
                              ),
                              textFieldAlignment: MainAxisAlignment.spaceAround,
                              fieldStyle: FieldStyle.underline,
                              onCompleted: (pin) {
                                print("Completed: " + pin);
                              },
                            ),

              )
              ]
            )
              )
          )
        )
      )
    );
  }
}