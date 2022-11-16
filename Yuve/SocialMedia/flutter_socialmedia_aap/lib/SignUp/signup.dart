import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_socialmedia_aap/login/login.dart';

class MySignUp extends StatefulWidget {
  const MySignUp({Key? key}) : super(key: key);

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  bool _isObscure = false,_isObscure1 = false;
   bool  un=false,em = false, pa = false,cou=false,cofpas=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Color(0xfff3f4f9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                height: 100,width: 350,
                child: Text('Welcome to Yuvi Social Networking..\nCreate a new account and connect with firends',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                
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
                    
                            Icon(Icons.person),
                            SizedBox(
                              width: 5,
                            ),
                            
          
                 Expanded(
                child: TextField(
                  maxLines: 1,
               
                  decoration: InputDecoration(
                      fillColor: Color(0xffffff),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                      labelText: 'Username', 
                      
                      // fillColor: Colors.white,
                      filled: true,
                      errorText: un ? "" : null),
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
                    
                            Icon(Icons.mail_outline),
                            SizedBox(
                              width: 5,
                            ),
                            
          
                 Expanded(
                child: TextField(
                  maxLines: 1,
               
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
                    
                            Icon(Icons.location_on),
                            SizedBox(
                              width: 5,
                            ),
                            
          
                 Expanded(
                child: TextField(
                  maxLines: 1,
               
                  decoration: InputDecoration(
                      fillColor: Color(0xffffff),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                      labelText: 'Countri', 
                      
                      // fillColor: Colors.white,
                      filled: true,
                      errorText: cou ? "" : null),
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
                   obscureText: _isObscure1,
                  autofocus: true,
                   
                  decoration: InputDecoration(
                     suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure1 ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure1 = !_isObscure1;
                      });
                    }),
                      fillColor:Color(0xffffffff),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                      labelText: ' Confirm Password',
                      filled: true,
                      errorText: cofpas ? "" : null),
                ),
              ),
            ],
          ),
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
            'SIGN UP',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            primary:Color(0xff876ee4)
           
          ),
          onPressed: () {}
        )
       ),

            SizedBox(height: 10,),
         Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('Already have an account',
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>MyLogin()),
                    );
                  },
                  child: Text(
                    'Login',
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