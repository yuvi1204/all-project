import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_e_commerce/Login/login.dart';
import 'package:flutter_e_commerce/SignUp/sign_up.dart';

class MyInteroPage extends StatefulWidget {
  const MyInteroPage({Key? key}) : super(key: key);

  @override
  State<MyInteroPage> createState() => _MyInteroPageState();
}

class _MyInteroPageState extends State<MyInteroPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
        "assets/images/background1.jpg"
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
                  SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.center,
                     child: Image.asset("assets/images/girlsicon.png",height: 100,width: 100,),

                     
                  ),
                  Container(
                    child: Text("MEGAN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 26),)
                  ),
                 SizedBox(height: 280),
                    Container(

                         width: 300, 
                         height: 50,     
                    child: ElevatedButton.icon(
                        
                onPressed: () {Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>MySignUp()));},
                icon: const Icon(Icons.mail),
                label: const Text("Sign UP"),
                style: ElevatedButton.styleFrom(
                  primary:  Color(0xff2abf9f),
                       
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                ),
              ),

                    ),
                
                  SizedBox(height: 10,),
                  Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 30,),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                      
                        Container(
                           height: 50,
                            width: 70,
                          decoration:BoxDecoration(
                            color:  Color(0xff646361),
                            borderRadius: BorderRadius.circular(40)

                          ),
                        
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(

                                 onTap: () {
                              /*  Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>));*/
                                  }, 

                                  child: Container(
                                  
                                   
                                        child:  Image.asset("assets/images/facebook.png",height: 40,width:40,)
                                      
                                  )
                                  ),
                            ],
                          ),
                        ),
                        Container(
                            height: 50,
                            width: 70,
                          decoration:BoxDecoration(
                            color:  Color(0xff646361),
                            borderRadius: BorderRadius.circular(40)

                          ),
                        
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(

                                 onTap: () {
                              /*  Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>));*/
                                  }, 

                                  child: Container(
                                  
                                   
                                        child:  Image.asset("assets/images/twitter.png",height: 20,width: 20,)
                                      
                                  )
                                  ),
                            ],
                          ),
                        ),

                        Container(
                           height: 50,
                            width: 70,
                          decoration:BoxDecoration(
                            color:  Color(0xff646361),
                            borderRadius: BorderRadius.circular(40)

                          ),
                        
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(

                                 onTap: () {
                              /*  Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>));*/
                                  }, 

                                  child: Container(
                                  
                                   
                                        child:  Image.asset("assets/images/google.png",height: 20,width: 20,)
                                      
                                  )
                                  ),
                            ],
                          ),
                        ),

                        Container(
                            height: 50,
                            width: 70,
                          decoration:BoxDecoration(
                            color:  Color(0xff646361),
                            borderRadius: BorderRadius.circular(40)

                          ),
                        
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(

                                 onTap: () {} , 

                                  child: Container(                                
                                        child:  Image.asset("assets/images/iphone.png",height: 20,width: 20,)                                    
                                  )
                                  ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.center, 
                   children: [
        Text('Already  have  on account ?',
            style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.w300)),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyLoginPage()),
              );
            },
            child: Text(
              'Login ',
              style: TextStyle(
                fontSize: 15,fontWeight: FontWeight.bold,
                color: Colors.white,
               
              ),
            )),
            Row(
               children: [
                Icon(Icons.arrow_forward,color: Colors.white,)
               ],

            )
      ]),
                 
                ],

              ),
              
            )
          ),
        ),
      ),

    );
    
  }
}
    
  