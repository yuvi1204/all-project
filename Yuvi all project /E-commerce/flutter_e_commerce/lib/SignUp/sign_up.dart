import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_e_commerce/Login/login.dart';
import 'package:country_code_picker/country_code_picker.dart';



class MySignUp extends StatefulWidget {
  const MySignUp({Key? key}) : super(key: key);

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
     bool isChecked = false;
  @override
  Widget build(BuildContext context)
  {
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
                 SizedBox(height: 10),
                 Container(     
                          height: 500,
                         // height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color:  Color(0xffe6e7eb),
                            borderRadius: BorderRadius.circular(30)
                          ),
                        
                  child:Column(
                    children: [
                      SizedBox(height: 20,),
                      Container(child: Text("Sign Up",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
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
                         hintText: "Email",  hintStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                      
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
          decoration: BoxDecoration(
                            color:Color(0xffd2d5da),
                            borderRadius: BorderRadius.circular(30),
                           ),
          child: Row(
            children: [
              Container(
                height: 50,
                  width:80,
                child: CountryCodePicker(
                  onChanged: print,
                backgroundColor:Color(0xffd2d5da) ,
                  initialSelection: 'IN',
                  favorite: ['+91', 'IN'],
                  
                  showCountryOnly: true,
                
                  showOnlyCountryWhenClosed: false,
                  
                  alignLeft: false,
                ),
              ),
              Expanded(
                child: TextField(
                    maxLines: 1,
                   decoration: InputDecoration(
                      fillColor: Color(0xffffff),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                         hintText: "Country",  hintStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                      
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
                         hintText: "Birthday",  hintStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                      
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
                        Text('I agree to all trems ',  
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
                            width: 130,
                            height: 50,
                            child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary:  Color(0xff2abf9f),
                                      
                                            shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(40),
                                    ),
                                     ),
                                                        onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Opacity(
                                        opacity: 0,
                                        child: Icon(Icons.arrow_forward),

                                      ),
                                      Text('Sign Up'),
                                      Icon(Icons.arrow_forward),
                                    ],
                                  ),
                                ),
                          ),
                        ),

                      ],
                     ),
                     
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