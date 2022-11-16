import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_e_commerce/SignUp/sign_up.dart';
import 'package:flutter_e_commerce/home/home.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
 
     bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
        "assets/images/background2.jpg"
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
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.center,
                     child: Image.asset("assets/images/girlsicon.png",height: 70,width: 70,),

                     
                  ),
                  Container(
                    child: Text("MEGAN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 22),)
                  ),
                 SizedBox(height: 30),
                 Container(     
                          height: 400,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color:  Color(0xffe6e7eb),
                            borderRadius: BorderRadius.circular(30)
                          ),
                        
                  child:Column(
                    children: [
                      SizedBox(height: 40,),
                      Container(child: Text("Welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                      SizedBox(height: 20,),
                     
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                         // padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color:Color(0xffd2d5da),
                            borderRadius: BorderRadius.circular(30),
                           ),
                        child: Row(
                          children: [
                 Expanded(
                child: TextField(
                  maxLines: 1,
                   
                  decoration: InputDecoration(
                      fillColor: Color(0xffffff),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                         hintText: "Username",  hintStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                      
                      // fillColor: Colors.white,
                      filled: true,
                     // errorText: em ? "" : null
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
          SizedBox(height: 10,),

                  Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                         // padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color:Color(0xffd2d5da),
                            borderRadius: BorderRadius.circular(30),
                           ),
                        child: Row(
                          children: [
                 Expanded(
                child: TextField(
                  maxLines: 1,
                   
                  decoration: InputDecoration(
                      fillColor: Color(0xffffff),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                         hintText: "Password",hintStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold), 
                      
                      // fillColor: Colors.white,
                      filled: true,
                     // errorText: em ? "" : null
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 20,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                       child:    Checkbox(
                      checkColor: Colors.white,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                     ),
                  
                     Row(
                   
                       children: [
                        Text('Remember me ',  
                     style: TextStyle(color: Color(0xff9da3ae), fontSize: 15,fontWeight: FontWeight.w800)),
                       ]
                     ),
                     

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            width: 120,
                            height: 50,
                            child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary:  Color(0xff2abf9f),
                                      
                                            shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(40),
                                    ),
                                     ),
                                                        onPressed: () {
                                                           Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyHomePage()),
                            );
                                                        },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Opacity(
                                        opacity: 0,
                                        child: Icon(Icons.arrow_forward),

                                      ),
                                      Text('Login'),
                                      Icon(Icons.arrow_forward),
                                    ],
                                  ),
                                ),
                          ),
                        ),

                      ],
                     ),
                      SizedBox(height: 20,),
                      Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0),
                child: Container(
                  height: 5,
                 width: MediaQuery.of(context).size.width,
                  color: Color(0xffd2d5da),
                 // margin: EdgeInsets.only(bottom: 25.0),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, 
                   children: [
                      Text('Already  have  on account ?',
                          style: TextStyle(color:Color(0xff9da3ae), fontSize: 15,fontWeight: FontWeight.w400)),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MySignUp()),
                            );
                          },
            child: Text(
              'Sign up ',
              style: TextStyle(
                fontSize: 15,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,
                color: Color(0xff9da3ae),
               
              ),
            )),
            
      ]),

                    ],
                  ) ,
                 ),
                 
                ]
              )
            )
          )
        )
      )


    );

    
  }
}

