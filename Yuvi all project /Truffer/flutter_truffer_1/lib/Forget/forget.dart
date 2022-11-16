import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_truffer_1/Log_IN/log_in.dart';
import 'package:flutter_truffer_1/splacescreen/splacescreen.dart';

class Myforget extends StatefulWidget {
  const Myforget({Key? key}) : super(key: key);

  @override
  State<Myforget> createState() => _MyforgetState();
}

class _MyforgetState extends State<Myforget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              SizedBox(height: 50,),
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
                            SizedBox(height: 50,),
                             Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
             color: Color(0xfff2f3f7),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              // Padding(padding: EdgeInsets.symmetric(vertical: 10)),
             
              //   Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Expanded(
                child: TextField(
                  
                  autofocus: true,
                  //  enabled: false,
                 // controller: email,
                  decoration: InputDecoration(
                     fillColor: Color(0xfff2f3f7)
                     ,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                    
                     hintText: 'Email Address',
                      filled: true,
                   //   errorText: em ? "please enter mail id" : null
                      ),
                ),
              ),
                SizedBox(
                height: 40,
                child: VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                  width: 1,
                ),
              ),
              SizedBox(width: 10,),
               Icon(Icons.mail_outline),
              
            
            ],
          ),
        ),
      ),

            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                                       // padding: EdgeInsets.symmetric(horizontal: 20),
                                       // margin: EdgeInsets.only(top: 20),  
                                        height: 50, width: 360,
                                      
                                        child: ElevatedButton(
                                      
                                                    child: Text(
                                              'Reset Password',
                                              style: TextStyle(
                                                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                               shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(15),),
                                            
                                                primary: Color(0xffff4d02),
                                            ),
                                            onPressed: () {
                                             /*  Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => MyHomeScreen()));*/
                                            })
                                    ),
            ),
                SizedBox(height: 170,)  ,             
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
                                        Text('Remember Password ?',
                                            style: TextStyle(color: Colors.black, fontSize: 15)),
                                        TextButton(
                                            onPressed: () {

                                              Navigator.push(context,
                                                MaterialPageRoute(builder: (context) => MyLogin()),
                                              );
                                            },
                                            child: Text(
                                              'Login',
                                              style: TextStyle(fontSize: 15,color: Color(0xffff4c02), decoration: TextDecoration.underline,),
                                            ))
                                      ]),

            ],
          ),
        )
        ),
    );
    
  }
}