import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_1/app_color.dart';
import 'package:flutter_test_1/loginscreen.dart';

class Myforgot extends StatefulWidget {
  const Myforgot({Key? key}) : super(key: key);

  @override
  State<Myforgot> createState() => _MyforgotState();
}

class _MyforgotState extends State<Myforgot> {
  TextEditingController email = TextEditingController();
  bool em = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
                      child:SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: Image.asset("assets/images/ic_logo_icon.png"),


                            ),
                            
                            SizedBox(height: 10,),
                            Container(
                             padding: EdgeInsets.symmetric(horizontal: 20),
                             alignment: Alignment.topCenter,
                             child: Text("Forgot Password",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),), 
                            ),
                            SizedBox(height: 20,),
                               Container(
                                      padding: EdgeInsets.symmetric(horizontal: 20),
                                      margin: EdgeInsets.only(top: 20),  
                                      height: 50, width: 360,
                                      child: ElevatedButton(
                                    
                                                  child: Text(
                                            'Email ID',
                                            style: TextStyle(
                                                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            shape: StadiumBorder(),
                                              primary: AppColor.advertisement_color1,
                                          ),
                                          onPressed: () {})
                                  ),
                            SizedBox(height: 40,),

                           Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
             color: Color(0xfff2f3f7),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              // Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Icon(Icons.mail_outline),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 40,
                child: VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                  width: 1,
                ),
              ),
              //   Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Expanded(
                child: TextField(
                  
                  autofocus: true,
                  //  enabled: false,
                  controller: email,
                  decoration: InputDecoration(
                     fillColor: Color(0xfff2f3f7)
                     ,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                      focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purpleAccent)),
                      errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purpleAccent)),
                      hintText: 'Email Address',
                      filled: true,
                      errorText: em ? "please enter mail id" : null),
                ),
              ),
            ],
          ),
        ),
      ),
                              SizedBox(height: 20,),
                               Container(
                                      padding: EdgeInsets.symmetric(horizontal: 20),
                                      margin: EdgeInsets.only(top: 20),  
                                      height: 50, width: 360,
                                      child: ElevatedButton(
                                    
                                                  child: Text(
                                            'Submit',
                                            style: TextStyle(
                                                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            shape: StadiumBorder(),
                                              primary: AppColor.advertisement_color1,
                                          ),
                                          onPressed: () {
                                           /*  Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => MyHomeScreen()));*/
                                          })
                                  ),
                                  SizedBox(height: 20,),
                                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                        Text('Remember Password ?',
                                            style: TextStyle(color: Colors.black, fontSize: 15)),
                                        TextButton(
                                            onPressed: () {

                                              Navigator.push(context,
                                                MaterialPageRoute(builder: (context) => MyLoginScreen()),
                                              );
                                            },
                                            child: Text(
                                              'Login',
                                              style: TextStyle(fontSize: 15,color: Color(0xffff4c02), decoration: TextDecoration.underline,),
                                            ))
                                      ]),
                          
                          ]
                        )
                      )  
      )      



    );
    
  }
}