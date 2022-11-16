import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shopingui/homescren.dart';
import 'package:flutter_shopingui/loginpage.dart';
import 'package:flutter_shopingui/verifynumber.dart';

class MyRegiteraccount extends StatefulWidget {
  const MyRegiteraccount({Key? key}) : super(key: key);

  @override
  State<MyRegiteraccount> createState() => _MyRegiteraccountState();
}

class _MyRegiteraccountState extends State<MyRegiteraccount> {
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  var sur1 = 'solanki';
  var na1 = 'yuvraj';
  var em1 = "yuvisolanki@gmail.com";
  var pass1 = "147963";

  bool em = false, pa = false, sur = false, na = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.topCenter,
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Regiter account",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: TextField(
                controller: surname,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    hintText: 'Surname',
                    filled: true,
                    errorText: sur ? "please enter Surname" : null),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    hintText: 'Name',
                    filled: true,
                    errorText: na ? "please enter mail id" : null),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(
                top: 20,
              ),
              // decoration: BoxDecoration(border:Border.all())

              child: TextField(
                controller: email,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    hintText: 'Email',
                    filled: true,
                    errorText: em ? "please enter mail id" : null),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 20),
              child: TextField(
                obscureText: true,
                controller: pass,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    hintText: 'Password',
                    filled: true,
                    errorText: pa ? "Enter pasword" : null),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 20),
              height: 60,
              width: 360,
              child: ElevatedButton(
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                onPressed: () {
                  if (surname.text.isEmpty ||
                      !RegExp('[a-zA-Z]').hasMatch(sur1)) {
                    setState(() {
                      sur = true;
                    });
                  } else if (name.text.isEmpty ||
                      !RegExp('[a-zA-Z]').hasMatch(na1)) {
                    setState(() {
                      na = true;
                    });
                  } else if (email.text.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(em1)) {
                    setState(() {
                      em = true;
                    });
                  } else if (pass.text.isEmpty ||
                      !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                          .hasMatch(pass1)) {
                    setState(() {
                      pa = true;
                    });
                  } else if (email.text.isNotEmpty || pass.text.isNotEmpty) {
                    em = true;
                    pa = true;

                    /*Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => Myname()));*/
                  } else {
                    setState(() {
                      em = false;
                      pa = false;
                    });
                  }
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('Already exit account ?',
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyVerifyNo()),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 15),
                  ))
            ])
          ],
        ),
      )),
    );
  }
}
