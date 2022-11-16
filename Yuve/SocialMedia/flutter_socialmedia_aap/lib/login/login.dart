import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_socialmedia_aap/Home/home.dart';
import 'package:flutter_socialmedia_aap/SignUp/signup.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
   bool _isObscure = false;
   TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  
  bool em = false, pa = false;
  var em1 = "yuvi@gmail.com";
  var pass1 = "1346";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xfff3f4f9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 10),
                child: Container(
                
                  height: 150,
                  width: 150,
                 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                   image: DecorationImage(
                    image: AssetImage("assets/images/y icon.png"),
                    fit: BoxFit.cover,
         
           )
      ),


                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Text("Welcome back !",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.black ),)
              ),
              SizedBox(height: 5,),
              Container(
                child: Text("Log into your account and get started !",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color:Color(0xfff876ee4)),)
              ),
              SizedBox(height: 10,),
                 Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(30),
                           ),
                        child: Row(
                          children: [
                    
                            Icon(Icons.mail_outline),
                            SizedBox(
                              width: 5,
                            ),
                            
          
                 Expanded(
                child: TextField(
                  maxLines: 1,
                    controller: email,
                  decoration: InputDecoration(
                      fillColor: Color(0xffffff),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                      labelText: 'Email', 
                      
                      // fillColor: Colors.white,
                      filled: true,
                      errorText: em ? "" : null),
                ),
              ),
            ],
          ),
        ),
      ),
    
      
      SizedBox(height: 10,),
        Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              // Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Icon(Icons.lock),
              SizedBox(
                width: 5,
              ),
             
              Expanded(
                child: TextField(
                   obscureText: _isObscure,
                  autofocus: true,
                    controller: pass,
                  decoration: InputDecoration(
                     suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    }),
                      fillColor:Color(0xffffffff),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                      labelText: 'Password',
                      filled: true,
                      errorText: pa ? "" : null),
                ),
              ),
            ],
          ),
        ),
      ),
     SizedBox(height: 10,),
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20),
       child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                child: Text("Forgot Password ?",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color:Colors.black ),)
            )
          ],
          

        ),
     ),
      SizedBox(height: 10,),
    
       Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        // color: Color(0xffff4c02),
        margin: EdgeInsets.only(top: 20),
        // color: AppColor.advertisement_color1,
        height: 50, width: 250,
        child: ElevatedButton(
          child: Text(
            'LOG IN',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            primary:Color(0xff876ee4)
           
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
                  MaterialPageRoute(builder: (context) => MyHome()));
            } else {
              setState(() {
                em = false;
                pa = false;
              });
            }
          },
          
        ),
      ),
      SizedBox(height: 10,),
         Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('Dont have an account ?',
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>MySignUp()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff876ee4),
                    
                    ),
                  ))
            ]),


            ],

                      ),

        )),
    );
    
  }
}