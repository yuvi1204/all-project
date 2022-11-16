import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test_1/home/home.dart';
import 'package:flutter_test_1/signin/signin.dart';
import 'package:flutter_test_1/signup/signup.dart';

class MyBlabbon extends StatefulWidget {
  const MyBlabbon({Key? key}) : super(key: key);

  @override
  State<MyBlabbon> createState() => _MyBlabbonState();
}

class _MyBlabbonState extends State<MyBlabbon> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
        "assets/images/background2.png"
        ),
           fit: BoxFit.cover,
           colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.darken)
           )
      ),
       child: Scaffold(
       // key: _scaffoldKey,
          backgroundColor: Colors.transparent,
        body: Container(
        //   key: _formKey,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
             //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Container(

                            
                                width: 300,
                                  height: 100,
                                  
                                  decoration: BoxDecoration(
                                    
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(
                                    image: AssetImage("assets/images/logo.png",) ,
                                    fit: BoxFit.fill
                                                        ),                                                         
                                          ),                                         
                            ),
                ),
                SizedBox(height: 5,),
                
                   Container(
                   // alignment: Alignment.center,
                    child: Text('Online Quiz Game For Children',textAlign: TextAlign.center, style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white, )),
                  ),
                  SizedBox(height: 200,),
                   Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Stack(
                      alignment: Alignment.topLeft,
                  children: [
                    Container(
                                 
                           //   alignment: Alignment.topLeft,
                                  width: 300,
                                    height: 50,
                                    
                                    decoration: BoxDecoration(
                                      
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                      image: AssetImage("assets/images/fb_logo.png",) ,
                                      fit: BoxFit.fill
                                                          ),
                                                            
                                            ),
                                            
                                            
                 
                              ),
                              Container(
                                height: 50,
                         
                              
                                  
                               alignment: Alignment.center,
                               child: Text('Connect With Facebook',style: TextStyle(color: Colors.white,fontSize: 14 ),),

                              ),
                            
                  ]
                 ),
              ),
              SizedBox(height: 20,),
           
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Stack(
                      alignment: Alignment.topLeft,
                  children: [
                    Container(
                                 
                           //   alignment: Alignment.topLeft,
                                  width: 300,
                                    height: 50,
                                    
                                    decoration: BoxDecoration(
                                      
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                      image: AssetImage("assets/images/google.png",) ,
                                      fit: BoxFit.fill
                                                          ),
                                                            
                                            ),
                                            
                                            
                 
                              ),
                              Container(
                                height: 50,
                         
                              
                                  
                               alignment: Alignment.center,
                               child: Text('Connect With Google',style: TextStyle(color: Colors.white,fontSize: 14 ),),

                              ),
                              
                              
                  ]
                 ),
              ),
              SizedBox(height: 20,),
               Container(
                padding: EdgeInsets.symmetric(horizontal: 20,),
                // margin: EdgeInsets.only(top: 20),
       
                    height: 50, width: 320,

               child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>MySignUp()));
                  
                },
                 // onPressed: _submit,
                  child: new Text('Sign Up', style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                   style: ElevatedButton.styleFrom(
           // shape: StadiumBorder(),
            primary: Color(0xff6b3ca1),
          ),
                ),
             ),
             SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center, 
                   children: [
        Text('Already  have  an Account ?',
            style: TextStyle(color: Colors.black, fontSize: 15)),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MySignIn()),
              );
            },
            child: Text(
              'Sign In',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xff6b3ca1),
               
              ),
            ))
      ]),
             
                ]
              )
            )
          )
        )
       )


    );
    
  }
}