import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project3/ui/detail/detail.dart';
import 'package:flutter_project3/ui/splashscreen/splashcreen1.dart';



class Mylogin extends StatefulWidget {
  const Mylogin({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  State<Mylogin> createState() =>_MyloginState();
}

class _MyloginState extends State<Mylogin> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController mail = TextEditingController();
  bool us = false, ps = false, ma = false;
   var va = false;
  final formkey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          alignment: Alignment.topLeft,
          color: Colors.blue,
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        key: formkey,
        //child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
            children: [
          
              Text('Your name',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
            ],),
              ),
            
              SizedBox(height: 2,),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
              /*  margin: EdgeInsets.only(
                  top: 10,
                ),*/
               
                
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.blue)),
                     
                     // hintText: 'Your name',
                      filled: true,
                      errorText: us ? "user name not enter" : null),
                ),
              ),
             
              SizedBox(
                height: 10,
              ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 30.0),
                          child: Row(
                          children: [
                           Text('Your mail',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                      ],),
                      ),
                      SizedBox(height: 2,),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                

                child: TextField(
                  controller: mail,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.blue)),
                      
                     // hintText: ' Your Email Id',
                      filled: true,
                      errorText: ma ? "Email Id  not enter" : null),
                ),
              ),
              SizedBox(
              height: 10,
              ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
            children: [
          
              Text('Create password',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
            ],),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
               
                // decoration: BoxDecoration(border:Border.all()),
                child: TextField(
                  obscureText: true,
                  controller: password,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.blue)),
                      //hintText: 'Password',enabled: OutlineInputBorder(borderRadius:BorderRadius.circular(20)),enabledBorder: ,
                     
                     // hintText: 'Password',
                      filled: true,
                      errorText: ps ? "password  not enter" : null),
                ),
              ),
              SizedBox(
                height: 20,
              ),

             Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10,),
                   Checkbox(
                          value:va,
                          onChanged: (newvalue ){
                           setState(() {
                             va=!va;
                           });
                          }, 
                        ),
                  Text('I agree with & conditions',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  SizedBox(height: 100,),
                 
                
                ],

              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 30, right: 20),
                child: ElevatedButton(
                  style:ElevatedButton.styleFrom(primary: Color(0xff3dd7cd),shape: StadiumBorder()),
                  child: Text('SING IN'),
                 
                  onPressed: () {
                    if (username.text.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(username.text)) {
                      setState(() {
                        us = true;
                      });
                    } else if (mail.text.isEmpty ||
                        !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                            .hasMatch(mail.text)) {
                      setState(() {
                        ma = true;
                      });
                    } 
                    else if (password.text.isEmpty ||
                        !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                            .hasMatch(password.text)) {
                      setState(() {
                        ps = true;
                      });
                            }
                    else if (username.text.isNotEmpty ||mail.text.isNotEmpty||
                        password.text.isNotEmpty) {
                      us = true;
                      ma = true;
                      ps = true;
                      
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>Mydetail()));
                    } else {
                      setState(() {
                        us = false;
                        ma = false;
                        ps =false;
                      });
                    }

                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
             
              SizedBox(
                height: 10,
              ),
             
            ],
          ),
      //  ),
      ),
    );
  }
}