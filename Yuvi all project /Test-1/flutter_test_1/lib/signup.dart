import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_1/app_color.dart';
import 'package:flutter_test_1/forgetpassword.dart';
import 'package:flutter_test_1/home.dart';
import 'package:flutter_test_1/loginscreen.dart';

class MySingUp extends StatefulWidget {
  const MySingUp({Key? key}) : super(key: key);

  @override
  State<MySingUp> createState() => _MySingUpState();
}

class _MySingUpState extends State<MySingUp> {
   bool _isObscure = true;
    bool _isObscure1 = false;
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController pno = TextEditingController();
  TextEditingController cps = TextEditingController();
  bool _checkbox = false;

  bool em = false,
      pa = false,
      lana = false,
      fina = false,
      pn = false,
      cpass = false;
  @override
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
      Container(),
      SizedBox(
        height: 10,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.topCenter,
        child: Text(
          "Sign Up",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(180),
                color: Colors.white,
                border: Border.all(
                  width: 1,
                )),
            child: Image.asset(
              "assets/images/ic_profile.png",
              width: 100,
              height: 100,
            ),
          ),
          Container(
            height: 115,
            width: 100,
            padding: EdgeInsets.only(top: 15,left: 5),
            alignment: Alignment.bottomRight,
            child: IconButton(
              icon: Image.asset("assets/images/ic_edit_icon.png"),
              onPressed: () {},
            ),
          )
        ],
      ),
      SizedBox(
        height: 20,
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
              Icon(Icons.person),
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
                  inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]'))
                ],
                  keyboardType: TextInputType.text,
                  controller: firstname,
                  decoration: InputDecoration(
                     fillColor: Color(0xfff2f3f7)
                     ,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                     
                      hintText: 'First Name',
                      filled: true,
                     // errorText: fina ? "please enter first name" : null
                      ),
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
              Icon(Icons.person),
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
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]'))
                ],
                  //  enabled: false,
                   keyboardType: TextInputType.text,
                  controller: lastname,
                  decoration: InputDecoration(
                     fillColor: Color(0xfff2f3f7)
                     ,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                   
                      hintText: 'Last Name',
                      filled: true,
                    //  errorText: lana ? "please enter last name" : null
                      ),
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
              Icon(Icons.mail_outline),
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
                  controller: email,
                  decoration: InputDecoration(
                     fillColor: Color(0xfff2f3f7)
                     ,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                    
                      hintText: 'Email Address',
                      filled: true,
                   //   errorText: em ? "please enter mail id" : null
                      ),
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
              Icon(Icons.call),
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
                 //  maxLength: 10,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                 
                ],
                  //  enabled: false,
                  controller: pno,
                  decoration: InputDecoration(
                     fillColor: Color(0xfff2f3f7)
                     ,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                      
                      hintText: 'Phone Num',
                      filled: true,
                      //errorText: pn ? "please enter phone number" : null
                      ),
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
                   obscureText: _isObscure,
                  autofocus: true,
                  //  enabled: false,
                  controller: pass,
                  decoration: InputDecoration(
                     fillColor: Color(0xfff2f3f7),
                    // suffixIcon:Icon(Icons.eys),
                     suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    }),
          
        
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                     
                      hintText: 'Password',
                      filled: true,
                     // errorText: pa ? "please enter valid Password" : null
                      ),
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
                    obscureText: _isObscure1,
                  autofocus: true,
                  //  enabled: false,
                  controller: cps,
                  decoration: InputDecoration(
                     fillColor: Color(0xfff2f3f7),
                      suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure1 ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure1 = !_isObscure1;
                      });
                    }),
                     
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                   
                      hintText: 'Confirm Password',
                      filled: true,
                    //  errorText: cpass ? "please enter confirm Password" : null
                      ),
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
           
              SizedBox(
                width: 5,
              ),
           /*   SizedBox(
                height: 40,
                child: VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                  width: 4,
                ),
              ),*/
              //   Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Expanded(
                child: TextField(
                  
                  autofocus: true,
                  //  enabled: false,
                 // controller: pass,
                  decoration: InputDecoration(
                     fillColor: Color(0xfff2f3f7),
                     
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                      focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                     /* errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purpleAccent)),*/
                      hintText: 'Refer Code (Optional)',
                      filled: true,
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Checkbox(
          value: _checkbox,
          onChanged: (value) {
            setState(() {
              _checkbox = true;
            });
          },
        ),
        Text('I agree', style: TextStyle(color: Colors.black, fontSize: 15)),
        Text(
          'User Agreement',
          style: TextStyle(
            fontSize: 15,
            color: Color(0xffff4c02),
            decoration: TextDecoration.underline,
          ),
        ),
        Text('&', style: TextStyle(color: Colors.black, fontSize: 15)),
        Text('Privacy Policy',
            style: TextStyle(
              fontSize: 15,
              color: Color(0xffff4c02),
              decoration: TextDecoration.underline,
            )),
      ]),
      SizedBox(height: 10),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.only(top: 20),
          height: 50,
          width: 360,
          child: ElevatedButton(
              child: Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                primary: AppColor.advertisement_color1,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomeScreen()));
              })),
      SizedBox(
        height: 10,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Already have an account?',
            style: TextStyle(color: Colors.black, fontSize: 15)),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyLoginScreen()),
              );
            },
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xffff4c02),
                decoration: TextDecoration.underline,
              ),
            ))
      ]),
    ]))));
  }
}
