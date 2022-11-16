
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_loginpage_sinup/homepage.dart';
import 'package:flutter_loginpage_sinup/signup.dart';
import 'package:flutter_loginpage_sinup/widget/customClipper.dart';

class MyLoginpage extends StatefulWidget {
  const MyLoginpage({Key? key}) : super(key: key);

  @override
  State<MyLoginpage> createState() => _MyLoginpageState();
}

class _MyLoginpageState extends State<MyLoginpage> {
  bool an = false, bn = false;
 TextEditingController username = TextEditingController();
 TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
       
        child: ListView(
         
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('ApnaAdda', style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff14279B),
                        ),),
            ),
            ListTile(
              title: const Text("Yuvraj", style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 11, 11, 12),)
                          ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Mehul',style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 11, 11, 12),)),
              onTap: () {
                
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Staydip',style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 11, 11, 12),)),
              onTap: () {
                
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Hitesh',style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 11, 11, 12),)),
              onTap: () {
                
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
        body: Container(
      height: 580,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -MediaQuery.of(context).size.height * .15,
            right: -MediaQuery.of(context).size.width * .4,
            child: Container(
                child: Transform.rotate(
              angle: -pi / 3.5,
              child: ClipPath(
                clipper: ClipPainter(),
                child: Container(
                  height: MediaQuery.of(context).size.height * .5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffE6E6E6),
                        Color(0xff14279B),
                      ],
                    ),
                  ),
                ),
              ),
            )),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 120),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'Apna',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff14279B),
                        ),
                        children: [
                          TextSpan(
                            text: 'adda',
                            style: TextStyle(color: Colors.red[200], fontSize: 30),
                          ),
                        ]),
                  ),
                  SizedBox(height: 50),
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Username",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                                obscureText: false,
                                controller: username,
                                
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    fillColor: Color(0xfff3f3f4),
                                    errorText:
                                        an ? " enter valid user name" : null,
                                    filled: true)
                                    )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Password",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                                obscureText: true,
                                controller: password,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    fillColor: Color(0xfff3f3f4),
                                    filled: true,
                                    errorText:
                                        bn ? "enter valid password" : null))
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                       if (an.toString().isEmpty||!RegExp(r'^[a-z A-Z]+$').hasMatch(username.text))
                       {  
                        setState(() {
                          an = true;
                        });

                       }else if(bn.toString().isEmpty||!RegExp(r'^[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$').hasMatch(password.text))
                        {
                              setState(() {
                                bn=true;
                              });
                       }else if(username.text.isNotEmpty ||
                          password.text.isNotEmpty) {
                        an = true;
                        bn = true;

                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomepage(),
                        ),
                      );
                    

                       }else{
                        setState(() {
                          an=false;
                          bn=false;
                        });
                       }

                       
                     
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
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
                            Color(0xff14279B),
                            Color(0xff14279B),
                          ],
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.centerRight,
                    child: Text('Forgot Password ?',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MySignup()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Don\'t have an account ?',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Register',
                            style: TextStyle(
                                color: Color(0xff14279B),
                                fontSize: 13,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 0,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
                      child:
                          Icon(Icons.keyboard_arrow_left, color: Colors.black),
                    ),
                    Text('Back',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
