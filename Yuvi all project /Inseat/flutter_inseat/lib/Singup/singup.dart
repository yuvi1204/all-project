import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_inseat/loginpage/login.dart';
import 'package:flutter_inseat/privacy/privacy.dart';
import 'package:flutter_inseat/terms/term.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Singup extends StatefulWidget {
  const Singup({Key? key}) : super(key: key);

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
   var _formKey = GlobalKey<FormState>();
     bool  isChecked = false;
     bool validate = false;
     bool p_isObscure = true;
     bool pc_isObscure = false;
     bool _obsecureText = true;
     bool _obsecureTextMobile = false;

     
     var fname, lname;
  void _toggleObscured() {
    setState(() {
      p_isObscure = !p_isObscure;
    });
  }
 /*  void _toggleObscured2() {
    setState(() {
      obsecureTextMobile = !obsecureTextMobile;
    });
  }*/
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
          key: _formKey,
        child: SafeArea(
          child:Expanded(
            child:Column(
              children: [
                  Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/bgnew.png",
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 70),
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        "assets/images/newlogo.png",
                        height: 180,
                        width: 180,
                      ),
                    ),
                  ],
                ),
                 Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Sing Up",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child:SingleChildScrollView(
                     child:    Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(10),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset(
                                        "assets/images/ic_user.png",
                                        height: 0,
                                        width: 0,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    hintText: "Frist Name"),
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                               
                                validator: (firstname) {
                                  firstname=fname;
                               
                                },
                              ),
                              SizedBox(height: 10,),
                              TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(10),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset(
                                        "assets/images/ic_user.png",
                                        height: 0,
                                        width: 0,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    hintText: "Last Name"),
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                               
                                validator: (lastname) {
                                  lastname=lname;
                               
                                },
                              ),
                                 SizedBox(height: 10,),
                                  Container(
                      
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(10),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset(
                                        "assets/images/ic_email.png",
                                        height: 0,
                                        width: 0,
                                        fit: BoxFit.fill,
                                      ),
                                      
                                      
                                    ),
                                  
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    hintText: "Enter Email Id"),
                               
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(value)) {
                                    return 'Plese Enter Email';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10,),
                                Container(
                           
                                 child: IntlPhoneField(
                                 decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  prefixIcon: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Image.asset(
                                      "assets/images/ic_phone.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  hintText: "Phone Number"),
                              disableLengthCheck: true,
                              initialCountryCode: 'IN',
                              onChanged: (phone) {
                                print(phone.completeNumber);
                              },
                              showCountryFlag: false,
                            )),
                            SizedBox(height: 10,),
                            Container(
                         
                          child: Column(
                            children: [
                              TextFormField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(6)
                                ],
                                obscureText: p_isObscure,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    contentPadding: const EdgeInsets.all(10),
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Image.asset(
                                        "assets/images/ic_lock.png",
                                        height: 0,
                                        width: 0,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                         hintText: 'Enter Your Password',
                                     errorText: validate
                                      ? 'Please Enter Your Password'
                                      : null,
                                      suffixIcon: GestureDetector(
                                        onTap: _toggleObscured,
                                        child: Transform.scale(
                                          scale: 0.5,
                                          child: ImageIcon(
                                                p_isObscure
                                            ? AssetImage(
                                                "assets/images/ic_hide.png",
                                              )  : AssetImage(
                                                "assets/images/ic_show.png",
                                              ),
                                        size: 12,
                                    
                                          ),
                                        ),
                                      )
                                    ),
                                    controller: _pass,
                                    validator: (val) {
                                  if (val!.isEmpty)
                                    return 'Please Your Password';
                                  return null;
                                }
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                         Container(
                         
                          child: Column(
                            children: [
                              TextFormField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(6)
                                ],
                                
                                obscureText: p_isObscure,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    contentPadding: const EdgeInsets.all(10),
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Image.asset(
                                        "assets/images/ic_lock.png",
                                        height: 0,
                                        width: 0,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                         hintText: 'Confirm Password',
                                     errorText: validate
                                      ? 'Confirm Password'
                                      : null,
                                      suffixIcon: GestureDetector(
                                        onTap: _toggleObscured,
                                        child: Transform.scale(
                                          scale: 0.5,
                                          child: ImageIcon(
                                                   _obsecureTextMobile
                                            ? AssetImage(
                                                "assets/images/ic_hide.png",
                                              )  : AssetImage(
                                                "assets/images/ic_show.png",
                                              ),
                                              size: 12,
                                    
                                          ),
                                        ),
                                      )
                                    ),
                                    controller: _pass,
                                    validator: (val) {
                                  if (val!.isEmpty)
                                    return 'Confirm Password';
                                  return null;
                                }
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                           Container(
                          
                            child: Column(
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(8)
                                  ],
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                 //   filled: true,
                                 
                                    contentPadding: const EdgeInsets.all(10),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset(
                                        'assets/images/ic_referal_code.png',
                                        width: 0,
                                        height: 0,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    hintText: 'Referral Code',
                                  ),
                            
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                
                                child: Row(
                                          children: [
                                            Container(
                                              child: Checkbox(

                                                value: isChecked,
                                                onChanged: (value) {
                                                  setState(() {
                                                    isChecked = value!;
                                                  });
                                                  Border.all(
                                                      color: Colors.lightGreen);
                                                },
                                                side: BorderSide(
                                                    color:Colors.lightGreen),
                                              ),
                                            ),
                                            Text('I agree'),
                                          ],
                                        )

                                ),
                                           Container(
                                            alignment: Alignment.topLeft,
                                      child: GestureDetector(
                                        onTap: (() {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Terms()),
                                          );
                                        }),
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 3),
                                        
                                          //alignment: Alignment.topRight,

                                          child: Text('Terms and Condition',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      //fontFamily: KSMFontFamily.robotoRgular,
                                                      color: Color.fromARGB(
                                                          255, 15, 3, 101))),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 3),
                                      child: Text("&"),
                                      ),
                                      Container(
                                        child: GestureDetector(
                                           onTap: (() {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Privacy()),
                                          );
                                        }),
                                          
                                          child: Text("PrivacyPolicy",style: TextStyle(color: Color.fromARGB(
                                                          255, 15, 3, 101)),),
                                        ),
                                      )

                            ],

                          ),
                          Container(
                           width: MediaQuery.of(context).size.width,
                              child: ElevatedButton( onPressed: () {},
                                child: Text('Sign Up', style: TextStyle(
                                 fontSize: 15,  color: Colors.white),
                                ),
                                  style: ElevatedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  primary:Color(0xff0a558e)
                                   ),
                                 
                                ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text('Already have an account?', style: TextStyle(color: Colors.black)),
                                TextButton(onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()),);
            }, child: Text('Login'))
                            ],
                          )



                        
                            ],
                          ),
                        ),
                            ],
                          ),
                        ),
                     


      
                  )
                  
                  )
      
              ],
            ) ,
          )
          ),
      ),

    );
    
  }
}