import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project3/ui/categori/categori.dart';
import 'package:flutter_project3/ui/detail/detail.dart';
import 'package:flutter_project3/ui/my%20friend/friend.dart';
import 'package:flutter_project3/ui/prise%20list/prise.dart';
import 'package:flutter_project3/ui/recycle%20waste/recycle%20waste.dart';
import 'package:flutter_project3/ui/test/test.dart';
import 'package:flutter_project3/ui/total/total.dart';

class Mydetail extends StatefulWidget
{
    const  Mydetail({Key?key}):super(key: key);
     @override
  State<Mydetail> createState() => _MydetailState();
}
 class _MydetailState extends State<Mydetail>{
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        
        
        child: Column(
          children: [
            Center(
              child: Container(
                height: 130,
                child: Image.asset( 
                  "assets/images/girl.png",
                  height: 150,
                  width: 100,
                ),
                
              ),
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Container(
                child: Text('Your Name', style: TextStyle(
                              color: Color(0xff3dd7cd), fontWeight: FontWeight.bold,fontSize: 18),),
                              
                )
              ],
              
            ),
            SizedBox(height: 30,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                   Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>Mycategori()));

                },
                child: Container(
                
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Sorting', style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),),
                )
                
           
              ),
              SizedBox(height: 20,),


          ],),
          SizedBox(height: 10,),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                   Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>Myprise()));

                },
                child: Container(
                
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Processing', style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),),
                )
                
           
              ),
          ],),
           SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){    Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>Myfriend()));

                },
                child: Container(
                
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Weather', style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),),
                )
                
           
              ),
          ],),
          SizedBox(height: 10,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){ Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>MyRecycle()));

                },
                child: Container(
                
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('News', style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),),
                )
                
           
              ),
          ],),
          SizedBox(height: 10,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>MyTotal()));


                },
                child: Container(
                
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Account', style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),),
                )
                
           
              ),
          ],),
          SizedBox(height: 10,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>Mytest()));

                },
                child: Container(
                
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Tools', style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold,),),
                )
                
           
              ),
          ],),
          SizedBox(height: 10,),




          ],
           
          
        )
      
    
      ),


    );
  }
} 