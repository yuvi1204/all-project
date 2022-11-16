import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_truffer_1/NewOder/newoder.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
           backgroundColor:Color(0xfff0f4f7), 
            elevation: 0,
              leading: IconButton(
          icon: new Icon(
            Icons.arrow_back,color: Colors.black,
          ),
          onPressed: () {
                  Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) =>MyOder() ));
          },
         // tooltip: "Back",
        ),
        title: Text("My Profile ",style: TextStyle(color: Colors.black,),),


        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        
                          decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(180),
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.black12,
                      width: 1,
                  )),
                   child: Image.asset(
                "assets/images/ic_profile.png",
                width: 100,
                height: 100,
              ),

                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text("Abhi shah", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ),
                        Container(
                         
                          child: Text("abhidriver@mailinator.com", style: TextStyle(fontSize: 12,color: Colors.grey),),
                        ),
                        Container(

                                      //padding: EdgeInsets.symmetric(horizontal: 20),
                                      margin: EdgeInsets.only(top: 10),  
                                      height: 30, width: 100,
                                      child: ElevatedButton(
                                    
                                                  child: Text(
                                            'Edit Profile',
                                            style: TextStyle(
                                                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            shape: StadiumBorder(),
                                              primary: Color(0xffff4c02),
                                          ),
                                          onPressed: () {
                                           /*  Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => MyHomeScreen()));*/
                                          })
                                  ),
                      ],
                    )
                  ],
                ),
              //  SizedBox(height: 20,),
                 SizedBox(
                height: 40,
                child: Divider(
                  color: Colors.grey,
                 indent: 20.0,
                endIndent: 20.0,
                thickness: 1,
                ),
              ),

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  
                  child: Text("Account information",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(

                  child: Icon(Icons.call),
                  
                ),
                SizedBox(width: 10,),
                Container(
                  child: Text("+91 8160232323"),
                )
                  ],
                ),
              ),
              SizedBox(height: 10,),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(

                  child: Icon(Icons.mail),
                  
                ),
                SizedBox(width: 10,),
                Container(
                  child: Text("abhidriver@mailinator.com"),
                )
                  ],
                ),
              ),
             



              ],
            ),
          )
          ),

    );
    
  }
}