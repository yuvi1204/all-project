import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project3/ui/detail/detail.dart';
import 'package:flutter_test/flutter_test.dart';

class Mytest extends StatefulWidget
{
    const  Mytest({Key?key}):super(key: key);
     @override
  State<Mytest> createState() => _MytestState();
}
class _MytestState extends State<Mytest>
{
  var singlecheckbox= false,a=false,b=false;
  var gender;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3dd7cd),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
                    Container(
                          child: TextField(decoration: InputDecoration(labelText: 'Enter Message',border: OutlineInputBorder(),fillColor: Colors.amber),
                                           keyboardType: TextInputType.multiline,
                                          minLines: 1, 
                                          maxLines: 5,
                                          
                                          ),

                    ),
            SizedBox(height: 10,),
            Text("Select your favourite mobile",style: TextStyle(fontSize:18),),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            activeColor: Colors.blue,
            value: singlecheckbox,
            title: Text('iphone',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
             onChanged: (value)=>setState(() {
              singlecheckbox=!singlecheckbox;
             })),
             CheckboxListTile(
           
            activeColor: Colors.blue,
            value: a,
            title: Text('Oppo',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
             onChanged: (value)=>setState(() {
             a=!a;
             }),
              controlAffinity: ListTileControlAffinity.leading,
             ),
             CheckboxListTile(
           
            activeColor: Colors.blue,
            value: b,
            title: Text('Oneplus',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
             onChanged: (value)=>setState(() {
             b=!b;
             }),
              controlAffinity: ListTileControlAffinity.leading,
             ),
             Text("What is your gender?", style: TextStyle( 
                     fontSize: 18,fontWeight: FontWeight.bold
                  ),),
                  Divider(),
                  ListTile(
                    title: Text('Male'),
                    leading: Radio(
                      value: 1,groupValue: gender,
                    onChanged: (value){
                      setState(() {
                        gender=value;
                      });
                    }
                    ),
                  
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Female'),
                    leading: Radio(
                      value: 2,groupValue: gender,
                    onChanged: (value){
                      setState(() {
                        gender=value;
                      });
                    }
                    ),
                    
                  )
        ],
      
       
        
        ),
    );
        
  } 
}