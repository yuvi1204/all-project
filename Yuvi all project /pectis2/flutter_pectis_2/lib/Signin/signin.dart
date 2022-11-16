import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MySignIn extends StatefulWidget {
  const MySignIn({Key? key}) : super(key: key);

  @override
  State<MySignIn> createState() => _MySignInState();
}

class _MySignInState extends State<MySignIn> {
   var _formKey = GlobalKey<FormState>();
   TextEditingController f_name = TextEditingController();
   TextEditingController l_name = TextEditingController();
   TextEditingController email = TextEditingController();
   TextEditingController password = TextEditingController();
   TextEditingController conf_password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
         key: _formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text("Create Account",style: TextStyle(fontSize: 30,fontWeight: FontWeight. w300),),
                    )

                  ],
                ),
                SizedBox(height: 30,),
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
                              controller: f_name,
                                  decoration: InputDecoration(
                                    labelText: "First Name"
                                  ),
                                   validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")
                                        .hasMatch(value)) {
                                  return 'Plese Enter F_Name';
                                }
                                return null;
                              },
                                   ),
                                   
                              )
                            ],
          
                          ),
                          
                          ),
                SizedBox(height: 10,),
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
                              controller: l_name,
                                  decoration: InputDecoration(
                                    labelText: "Last Name"
                                  ),
                                   validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")
                                        .hasMatch(value)) {
                                  return 'Plese Enter L_Name';
                                }
                                return null;
                              },
                                   ),
                                   
                              )
                            ],
          
                          ),
                          
                          ),
                SizedBox(height: 10,),
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
                          SizedBox(height: 10,),
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
                          SizedBox(height: 10,),
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
                                    labelText: "Conform Password "
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


              ],
            ),
          )
          )
        ),


    );
    
  }
}