import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_pectis_2/Signin/signin.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
   var _formKey = GlobalKey<FormState>();
  var isLoading = false;
   bool valuefirst = false;
    TextEditingController email = TextEditingController();
      TextEditingController password = TextEditingController();
  
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor:  Color(0xffe9e8ee),
          body: Form(
                   key: _formKey,
            child: SafeArea(
           
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30,),
                      child: Text("Wlecome back !",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400)),
          
                    ),
                
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text("Login to contiue.",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,color: Color(0xffbfbfc1),),),
                    ),
                    SizedBox(height: 50,),
                
                        
                        
                        Container(
                          
                        /*  decoration: BoxDecoration(
                            image: DecorationImage(image:  AssetImage("assets/images/2.png",),
                               fit: BoxFit.cover,)
                          ),*/
                   
                          child: Text("Avigo",style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold ,),),
                        ),
                        SizedBox(height: 50,),
                        Padding(
                          padding:EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  maxLines: 1,
                                  autofocus: false,
                                   inputFormatters: [
                                  FilteringTextInputFormatter.deny(RegExp(r'[ ]'))
                              ],
                              controller: email,
                                  decoration: InputDecoration(
                                    labelText: "Email"
                                  ),
                                   validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(value)) {
                                  return 'Plese Enter Email';
                                }
                                return null;
                              },
                                   ),
                                   
                              )
                            ],
          
                          ),
                          
                          ),
                          SizedBox(height: 20,),
                          Padding(
                          padding:EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  maxLines: 1,
                                  autofocus: true,
                                   controller: password,
                                     inputFormatters: [
                              FilteringTextInputFormatter.deny(RegExp(r'[ ]')),
                              LengthLimitingTextInputFormatter(6)
                            ],
                                  decoration: InputDecoration(
                                    labelText: "Password"
                                  ),
                                     validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please Enter password ';
                              } else if (value.length < 6) {
                                return "week";
                              }
                              return null;
                            }
                                ),
                              )
                            ],
          
                          ),
                          
                          ),
                          
                          SizedBox(height: 20,),
                          Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    child: Text("Forgot Password ?",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Color(0xff8bdcd1),),)
                                      )
                                    ],
                                    ),
                              ),
                             SizedBox(height: 20,),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                width: MediaQuery.of(context).size.width,
                                height: 40,
                                child: ElevatedButton(onPressed:(){
                                  if(_formKey.currentState!.validate()){
                                       
                                     print("ok")  ;
                             
                              
                                 Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => MySignIn()));
                                      
                                  }
                                  else{
                                         print("fail");
                                  }
                                },

                                style: ElevatedButton.styleFrom(primary: Color(0xff6531c4)),
                                child: Text("Login",style: TextStyle(
                                          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)
                                
                                ),
          
                              ),
                              SizedBox(height: 90,),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                width: MediaQuery.of(context).size.width,
                                height: 40,
                                child: ElevatedButton(onPressed:(){},
                                style: ElevatedButton.styleFrom(primary: Color(0xffdddbe8)),
                                child: Text("Create Account",style: TextStyle(
                                          fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff6531c4)),)
                             
                                ),
                              ),
                ]
                ),
              )
              ),
          ),
    );
    
  }
}