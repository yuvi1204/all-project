import 'dart:html';
import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar( 
          backgroundColor: Colors.white,
         // title: Text("Login Page"),
          leading:IconButton(icon:Icon(Icons.arrow_back_ios_new_sharp), onPressed: () {  },color: Colors.blue,),
        ),
        backgroundColor: Colors.white,

        
        body: SafeArea(
          //child: Center(
              child: Column(
            
            children: [
           
              Text('Wlecome Back', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                )
              ),
              SizedBox(
                height: 40,
              ),
              
                Container(
                   padding: const EdgeInsets.symmetric(horizontal:25.0),
                  alignment: Alignment.centerLeft,
                  
                   
                
                      child:Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),
                      ),
                ),
               
             SizedBox(height: 10,),
            Container(
             //alignment: Alignment.centerLeft,
              padding:const EdgeInsets.symmetric(horizontal: 25.0),
           //  const Icon(Icons.person),
             child:Text('User name'),
            ),

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                      ),
                      child: TextField(
                        controller: name,
                       // obscureText: true,
                        decoration: InputDecoration(fillColor: Colors.amber[50],
                          border: OutlineInputBorder(),
                          // const icon: Icons.person(),
                          
                          labelText: 'User_Name',
                          filled: true,
                        ),
                      ))),
              SizedBox(
                height: 20,
              ),

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                      ),
                      child: TextField(
                        controller: password,
                        obscureText: true,
                        decoration: InputDecoration(fillColor: Colors.amber[50],
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          filled: true,
                        ),
                      ))),
                     // const SizedBox(height: 20,)
                     
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(20, 30, 1, 0),
                    child: ElevatedButton(
                      child: const Text('Login'),
                     onPressed: () {}  
                )
            ),
                     
            ]            
          )),
      //  )
        );
  }
}
