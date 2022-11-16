import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_truffer_1/Editprofile/editprofile.dart';
import 'package:flutter_truffer_1/Forget/forget.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
   var _formKey = GlobalKey<FormState>();
    bool _isObscure =false;
   bool valuefirst = false;
    TextEditingController email = TextEditingController();
      TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfff0f4f7),
      body: Form(
          key: _formKey,
        child: SafeArea(
          child:SingleChildScrollView(
            child: Column(
          
              children: [
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150),
                  child: Container(
                    height: 100,
                    width: 100,
                      child: Image.asset("assets/images/ic_logo_icon.png"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.topCenter,
                     child: Text( "Log In",  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    ),
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                         maxLines: 1,
                                  autofocus: false,
                                   inputFormatters: [
                                  FilteringTextInputFormatter.deny(RegExp(r'[ ]'))
                              ],
                              controller: email,
                        decoration:InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                          ),
                          filled: true,
                          fillColor:Color(0xffffffff), 
                          hintText: 'Email Address',
                          suffixIcon: Icon(Icons.mail,color: Colors.grey,)
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
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                          maxLines: 1,
                           obscureText: _isObscure,
                                  autofocus: false,
                                   inputFormatters: [
                                  FilteringTextInputFormatter.deny(RegExp(r'[ ]')),
                                    LengthLimitingTextInputFormatter(6)
                                  
                              ],
                              controller: password,
                               decoration:InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                          ),
                          filled: true,
                          fillColor:Color(0xffffffff), 
                          hintText: 'Password',
                          suffixIcon:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                
                                    IconButton(
                                      icon: Icon(   _isObscure ? Icons.visibility_off : Icons.visibility,color: Colors.grey), 
                                      onPressed: () {
                                        setState(() {
                                           _isObscure = !_isObscure;
                                        });
                                      }),
                                       IconButton(
                                   icon: Icon(Icons.lock,color: Colors.grey), onPressed: () {}),
                              ],
                          ),
                        
                          
                        ),
                        validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please Enter password ';
                              } else if (value.length < 6) {
                                return "";
                              }
                              return null;
                            }


                      ),
                      
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 50,width: 340,
                          child: ElevatedButton(onPressed: () {
                            if(_formKey.currentState!.validate()){
                                   print("ok");
                                    Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => MyEditProfile()));
                                
                            }
                             else{
                                         print("fail");
                                  }
                          },

                           child: Text("Log In",style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                          style:  ElevatedButton.styleFrom(primary: Color(0xffff4d02)),

                           ),
                        
                        ),
                      ),
                      SizedBox(height: 30,),
                       Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Myforget()),
                  );
                },
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      fontSize: 15),
                ),
              )
            ]),

      
              ],
            ),
          )
          
          ),
      ),
    );
    
  }
}