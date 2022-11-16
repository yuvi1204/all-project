import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shopingui/regiter.dart';

class MyLoginpage extends StatefulWidget {
  const MyLoginpage({Key? key, required String title}) : super(key: key);

  @override
  State<MyLoginpage> createState() => _MyLoginpageState();
}

class _MyLoginpageState extends State<MyLoginpage> {
  TextEditingController email =TextEditingController();
  TextEditingController pass =TextEditingController();
  var em1 = "y@gmail.com";
  var pass1 ="143";

  bool em=false,pa=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

                    body:SafeArea(
                      child:SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 80,),
                            Container(
                             padding: EdgeInsets.symmetric(horizontal: 20),
                             alignment: Alignment.topCenter,
                             child: Text("Welcome",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),), 
                            ),
                            SizedBox(height: 10,),
                            Text("Login to your account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
                            SizedBox(height: 20,),
                             
              
                            Container(
                              padding: const EdgeInsets.symmetric( horizontal: 20),
                               margin: EdgeInsets.only( top: 20,),
                // decoration: BoxDecoration(border:Border.all())

                                child: TextField(
                                  controller: email,
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                          borderSide: BorderSide(color: Colors.transparent)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                          borderSide: BorderSide(color: Colors.blue)),
                                      
                                      hintText: 'Email',
                                      filled: true,
                                      errorText: em ? "please enter mail id" : null),
                                ),
                              ),
                              SizedBox(height: 10,),
                              
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20 ),
                                margin: EdgeInsets.only(top: 20),
     

                                child: TextField(
                                  obscureText: true,
                                  controller: pass,
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                          borderSide: BorderSide(color: Colors.transparent)),
                                          focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                          borderSide: BorderSide(color: Colors.blue)),
                                     
                                      hintText: 'Password',
                                      filled: true,
                                      errorText: pa ? "Enter pasword" : null),
                                ),
                              ),
                              SizedBox(height :10),
                               
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  
                                      margin: EdgeInsets.only(top: 20),
                                      height: 60,width: 360,
                                  child: ElevatedButton(
                                    child: Text('Login',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
                                    style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                                    onPressed: () {
                                      if (email.text.isEmpty ||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                              .hasMatch(em1)) {
                                        setState(() {
                                          em = true;
                                        });
                                      } 
                                      else if (pass.text.isEmpty ||!RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                                              .hasMatch(pass1)) {
                                        setState(() {
                                          pa = true;
                                        });
                                              }
                                      else if (email.text.isNotEmpty||pass.text.isNotEmpty) 
                                      {
                                        
                                        em = true;
                                        pa = true;
                                        
                                        /*Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => Myname()));*/
                                      } else {
                                        setState(() {
                                          
                                          em = false;
                                          pa =false;
                                        });
                                      }

                                    
                                    },
                                  ),
                                ),
                                SizedBox(height: 20),
                                Padding(padding: EdgeInsets.symmetric(horizontal: 10),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text("Forget Password ?"),
                                    
                                  ],
                                ),
                                
                                ),
                                SizedBox(height: 20,),
                                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Dont have an account ?', style: TextStyle(color: Colors.black,fontSize: 15)),
            TextButton(onPressed: () {
             Navigator.push(context,MaterialPageRoute(builder: (context)=>MyRegiteraccount()),);
            }, child: Text('Sine Up',style: TextStyle(fontSize: 15),))
                  ])
                          ],
                        ),
                      

                    )) ,

    );
    
  }
}