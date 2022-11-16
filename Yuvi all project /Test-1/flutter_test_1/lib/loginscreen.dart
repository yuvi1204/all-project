import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_1/app_color.dart';
import 'package:flutter_test_1/forgetpassword.dart';
import 'package:flutter_test_1/home.dart';
import 'package:flutter_test_1/signup.dart';

class MyLoginScreen extends StatefulWidget {
  const MyLoginScreen({Key? key}) : super(key: key);

  @override
  State<MyLoginScreen> createState() => _MyLoginScreenState();
}

class _MyLoginScreenState extends State<MyLoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool _isObscure = true;
  bool em = false, pa = false;
  var em1 = "y@gmail.com";
  var pass1 = "143";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
      Container(
        width: 100,
        height: 100,
        child: Image.asset("assets/images/ic_logo_icon.png"),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.topCenter,
        child: Text(
          "Log In",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Color(0xfff2f3f7),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              // Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Icon(Icons.mail_outline),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 40,
                child: VerticalDivider(
                  color: Colors.black,
                  thickness: 1,
                  width: 1,
                ),
              ),
              //   Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Expanded(
                child: TextField(
                  maxLines: 1,
                  controller: email,
                  decoration: InputDecoration(
                      fillColor: Color(0xfff2f3f7),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                      hintText: "Enter  email",
                      filled: true,
                      errorText: em ? "" : null),
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Color(0xfff2f3f7),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              // Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Icon(Icons.lock),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 40,
                child: VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                  width: 1,
                ),
              ),
              //   Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Expanded(
                child: TextField(
                  autofocus: true,
                  //  enabled: false,
                  obscureText: true,
                  controller: pass,
                  decoration: InputDecoration(
                      fillColor: Color(0xfff2f3f7),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                      hintText: 'Password',
                      filled: true,
                      errorText: pa ? "" : null),
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 10),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        // color: Color(0xffff4c02),
        margin: EdgeInsets.only(top: 20),
        // color: AppColor.advertisement_color1,
        height: 50, width: 360,
        child: ElevatedButton(
          child: Text(
            'Log In',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            primary: AppColor.advertisement_color1,
          ),
          onPressed: () {
            if (email.text.isEmpty ||
                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(email.text)) {
              setState(() {
                em = true;
              });
            } else if (pass.text.isEmpty ||
                !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                    .hasMatch(pass.text)) {
              setState(() {
                pa = true;
              });
            } else if (email.text.isNotEmpty || pass.text.isNotEmpty) {
              em = true;
              pa = true;

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomeScreen()));
            } else {
              setState(() {
                em = false;
                pa = false;
              });
            }
          },
        ),
      ),
      SizedBox(height: 10),

      /*  GestureDetector(
                     /* onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyRegistrationscreen(),
                        ),
                      ),*/
                      child: Container(
                        height: 50,width: 360,
                      //  width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.grey.shade200,
                                offset: Offset(2, 4),
                                blurRadius: 5,
                                spreadRadius: 2)
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xffffffff),
                              Color(0xffffffff)

                            ],
                          ),
                        ),
                        child: Text(
                          'Continue as guest',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orange,),
                        ),
                      ),
                    ),*/

      Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.only(top: 20),
          /*  decoration: BoxDecoration(
        color: Color(0xffff4c02),
         ),*/

          height: 50,
          width: 360,
          child: ElevatedButton(
              child: Text(
                'Continue as guest',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffff4c02),
                ),
              ),
              style: ElevatedButton.styleFrom(
                side: BorderSide(width: 3, color: Color(0xffff4c02)),
                shape: StadiumBorder(),
                primary: AppColor.advertisement_color2,
              ),
              onPressed: () {})),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Or Login With ", style: TextStyle(fontSize: 15)),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                ),
                // color: Color(0xff14279B),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(45),
                    child: Image.asset("assets/images/fb.png")),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 30,
                height: 30,
                child: Image.asset("assets/images/google.png"),
              )
            ]),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Myforgot()),
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
            SizedBox(
              height: 3,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('Dont have an account ?',
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MySingUp()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xffff4c02),
                      decoration: TextDecoration.underline,
                    ),
                  ))
            ]),
          ],
        ),
      ),
    ]))));
  }
}
