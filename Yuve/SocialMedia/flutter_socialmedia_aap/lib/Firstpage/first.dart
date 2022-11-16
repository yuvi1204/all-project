import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_socialmedia_aap/SignUp/signup.dart';
import 'package:flutter_socialmedia_aap/login/login.dart';

class MyFirst extends StatefulWidget {
  const MyFirst({Key? key}) : super(key: key);

  @override
  State<MyFirst> createState() => _MyFirstState();
}

class _MyFirstState extends State<MyFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                    backgroundColor:  Color(0xfff3f4f9),
                     bottomNavigationBar: Container(
                     
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                             Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>MyLogin()));
                              }, 
                              child: Container(
                                height: 50,
                                width: 100,
                               alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                   gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                      Color(0xff8270e3),
                                         Color(0xff5f7ddd),
                                      ],
                                    )
                                ),
                                child:Text("LOGIN",textAlign: TextAlign.center,style:
                                     TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white),),
                                  
                            
                              ),
                            ),
                            SizedBox(width: 120,),
                            GestureDetector(
                              onTap: () {
                             Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>MySignUp()));
                              }, 
                              child: Container(
                                height: 50,
                                width: 100,
                               alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                   gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                      Color(0xff8270e3),
                                         Color(0xff5f7ddd),
                                      ],
                                    )
                                ),
                                child:Text("SIGN UP",textAlign: TextAlign.center,style:
                                     TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white),),
                                  
                            
                              ),
                            ),
                
                          ],
                        ),
                      ),
                      


                     ),
                     

                      body: Center(

                        child:SingleChildScrollView(
                          child: Column(
                               //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            
                                 Container(
                                  height: 150,
                                  width: 150,
                                
                                  decoration: BoxDecoration(
                                     gradient: LinearGradient(

                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                      Color(0xffc985ed),
                                         Color(0xff8c7eeb),
                                      ],
                                    ),
                                      borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/y icon.png",) ,
                                    fit: BoxFit.fill,
                                    ),
                                  )
                                  
                                ),
                                
                             
                              SizedBox(height: 20,),
                              Container(
                                
                                child: Text("Yuvi ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),), 
                              ),
                          
                             

                            ],


                          ),
                          
                          )
                        ),

    );
    
  }
}