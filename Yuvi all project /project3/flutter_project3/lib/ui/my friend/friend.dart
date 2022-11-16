import 'package:flutter/material.dart';
import 'package:flutter_project3/ui/my friend/friend.dart';
import 'package:flutter_project3/ui/my%20friend/friend.dart';
import 'package:flutter_project3/ui/my%20friend/myfriendlist.dart';

import 'friend.dart';

class Myfriend extends StatefulWidget{
  
  const Myfriend({Key?key,}):super(key: key);
 
    @override
  State<Myfriend> createState() => _MyfriendState();
}
class _MyfriendState extends State<Myfriend>
{
  List <FdModel>dummydata=[
    FdModel(
    "assets/images/person.png","Name","kg","Amaount"),
     FdModel(
    "assets/images/person.png","Name","kg","Amaount"),
     FdModel(
    "assets/images/person.png","Name","kg","Amaount"),
  
  ];

      @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        
        
        child: Column(
          children:[
           SizedBox(height: 40,),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Container(child:
                 Text('My Friends', style: 
                          TextStyle(color: Color(0xff3dd7cd), 
                              fontWeight: FontWeight.bold,fontSize: 30),
                       ),
                ), 
              ]
            ),
            SizedBox(height: 20,),
            
           
            SizedBox(height: 20,),
             Container(
              height: 400,
              child: ListView.separated(
                itemBuilder:(context, index)
                 {
                    return MyFriendlist(fdModel: dummydata[index]);
                },
                separatorBuilder: (context, index) => const Divider(
                      height: 1.0,),
                itemCount: 3
              ),
                
            ),
          ]
        
        ),
      ),
    );
  }
}

class FdModel {
  String nameUser;
  String imagesUserUrl;
  String userweight;
  var useramaount;
  
  FdModel(this.imagesUserUrl,this.nameUser,this.userweight,this.useramaount);

}     



            

          
            
