import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_inseat/Singup/singup.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // CountryCode? code = CountryCode(
  //   code: "IND",
  //   dialCode: "+91",
  // );
  var _formKey = GlobalKey<FormState>();
  bool byEmail = true,  isChecked = false;
  late TextEditingController mobileCtr;
  late TextEditingController emailCtr;
  late TextEditingController password;
  late TextEditingController passwordMobile;
  var _pass;
  var value1;

  void initState() {
    mobileCtr = TextEditingController();
    emailCtr = TextEditingController();
    password = TextEditingController();
    passwordMobile = TextEditingController();

    super.initState();
  }

  bool validate = false;
  bool p_isObscure = true;
  void _toggleObscured() {
    setState(() {
      p_isObscure = !p_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SafeArea(
            child: Expanded(
          child: Column(
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
                  "Login",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    print("1");
                                    byEmail = true;
                                    password.clear();
                                    passwordMobile.clear();
                                    mobileCtr.clear();
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: byEmail
                                          ? Color(0xff0a558e)
                                          : Color(0xffb6cbdc),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(50),
                                          bottomLeft: Radius.circular(50))),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  child: Text("Email",style: TextStyle(color: Colors.white,))
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    print("2");
                                    byEmail = false;
                                    password.clear();
                                    passwordMobile.clear();
                                    mobileCtr.clear();
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: byEmail
                                          ? Color(0xffb6cbdc)
                                          : Color(0xff0a558e),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(50),
                                          bottomRight: Radius.circular(50))),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  child: Text("Phone"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      if (byEmail)
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
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
                                controller: emailCtr,
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(value)) {
                                    return 'Plese Enter Email';
                                  }
                                  return null;
                                },
                              )
                            ],
                          ),
                        ),
                     
                      if (!byEmail)
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
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
                      if (byEmail)
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
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
                       // SizedBox(height: 10,),
                          if (!byEmail)
                          Container(
                            padding:
                                EdgeInsets.only( left: 20, right: 20),
                            child: TextFormField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(6)
                                ],
                                obscureText: p_isObscure,

                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50)),

                                  contentPadding: const EdgeInsets.all(10),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Image.asset(
                                      'assets/images/ic_lock.png',
                                      width: 0,
                                      height: 0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  errorText: validate
                                      ? 'Please Enter Your Password'
                                      : null,
                                  //labelText: 'Enter Password',
                                  hintText: 'Enter Your Password',
                                  suffixIcon: GestureDetector(
                                    onTap: _toggleObscured,
                                    child: Transform.scale(
                                      scale: 0.5,
                                      child: ImageIcon(
                                        p_isObscure
                                            ? AssetImage(
                                                "assets/images/ic_show.png",
                                              )
                                            : AssetImage(
                                                "assets/images/ic_hide.png",
                                              ),
                                        size: 12,
                                       
                                      ),
                                    ),
                                  ),
                                ),
                                //maxLength: 6,
                                controller: _pass,
                                validator: (val) {
                                  if (val!.isEmpty)
                                    return 'Please Your Password';
                                  return null;
                                }),
                          ),
                           Padding(
                            padding:EdgeInsets.only(left: 20,right: 20),
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Checkbox(
                                  checkColor: Colors.white,
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                              ),
                                       Text("Remember Me"),
                                       Container(
                                        child:  TextButton(
                onPressed: () {
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ),
                  );*/
                },
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      fontSize: 15),
                ),
              ) ,
                                       )

                           
                                         ],
                           
                                         ),
                           ),
                           SizedBox(height: 10,),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 20),
                             child: Container(
                               width: MediaQuery.of(context).size.width,
                              child: ElevatedButton( onPressed: () {},
                                child: Text('Login', style: TextStyle(
                                 fontSize: 15,  color: Colors.white),
                                ),
                                  style: ElevatedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  primary:Color(0xff0a558e)
                                   ),
                                 
                                ),
                             ),
                           ),
                           SizedBox(height: 10,),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
           
             width: MediaQuery.of(context).size.width,

            child: ElevatedButton(
                child: Text(
                  'Sing up',
                  style: TextStyle(
                    fontSize: 15,
                 
                    color: Color(0xff0a558e),
                  ),
                ),
                style: ElevatedButton.styleFrom(
              
                  side: BorderSide(width: 1, color: Color(0xff0a558e),),
                  shape: StadiumBorder(),
                  primary: Color(0xffffffff),
                ),
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>Singup() ),
                  );})),
      ),
       SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Container(
                height: 30,width: 30,
              
                child: Image.asset("assets/images/ic_facebook.png")

              ),
              SizedBox(width: 10,),
               Container(
                height: 30,width: 30,
              
                child: Image.asset("assets/images/ic_google.png")

              ),
                ],
              ),
              SizedBox(height: 10,),
               Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Don't have an account ?",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              TextButton(
                  onPressed: () {
                  /*  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ),
                    );*/
                  },
                  child: Text(
                    'continue as guest',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff0a558e),
                
                    ),
                  ))
            ]),

                    ],
                  ),
                ),
              )),
             

              
            ],
          ),
        )),
      ),
    );
  }
}
