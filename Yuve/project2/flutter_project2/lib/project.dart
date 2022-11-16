
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myname extends StatefulWidget {
  const Myname({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  State<Myname> createState() => _MynameState();
}

class _MynameState extends State<Myname> {
  TextEditingController username =TextEditingController();
  TextEditingController password =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
             
        SizedBox(
          height: 40,
        ),
              Container(
                padding: EdgeInsets.only(top: 100,left: 70,right: 70),//symmetric(horizontal: 25.0),
                alignment: Alignment.topCenter,
                child: Text('Welcome back!',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),),
              ) ,
              SizedBox(height: 10,),
              Text('Login to your account',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10),) ,      
                 
              SizedBox(height: 20,),
              Container(

              
                padding:const EdgeInsets.symmetric(horizontal: 20,),
                    margin: EdgeInsets.only(top:20,),
                 // decoration: BoxDecoration(border:Border.all()),
                  child: TextField(
                    controller:username,
                    decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue)
                      ),  
                   
                   prefixIcon: Icon(Icons.person,),
                   hintText: 'User name',
                   filled: true,
                    ),
                    
                  ),
                

                ),

              

              
                SizedBox(height: 10,),
                
                 Container(

              
                padding:const EdgeInsets.symmetric(horizontal: 20,),
                    margin: EdgeInsets.only(top:20,),
                 // decoration: BoxDecoration(border:Border.all()),
                  child: TextField(
                    controller: password,
                    decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue)
                      ),  
                      //hintText: 'Password',enabled: OutlineInputBorder(borderRadius:BorderRadius.circular(20)),enabledBorder: ,
                   prefixIcon: Icon(Icons.lock,),
                   hintText: 'Password',
                   filled: true,
                    ),
                    
                  ),
                

                ),

              ],
            
            ),

          ),
         ),

    );
    
}}
