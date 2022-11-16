import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_project3/ui/my friend/myfriendlist.dart';

import 'friend.dart';

class MyFriendlist extends StatelessWidget
{
  MyFriendlist({Key? key, required this.fdModel}) : super(key: key);

  FdModel fdModel;

  @override
  Widget build(BuildContext context) {
    return Container(

             width: 500,
             height: 280
             ,decoration: BoxDecoration(
              color: Colors.white30,
              border: Border.all(width: 1,color: Colors.black87,),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          
              child: Column(
                
                
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                         
             
                      Padding(
                        padding:EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        child: Container(

                          height: 50,
                          width: 100,
                          child: Image.asset( "${fdModel.imagesUserUrl}",
                    height: 50,width: 50,),
                         
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        child: Container(

                          height: 50,
                          width: 100,
                          child:Center(
                          child:Text("${fdModel.nameUser}",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,),)
                          )
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                        child: Container(

                          height: 50,
                          width: 80,
                          child:IconButton(icon: Icon(
                          Icons.delete,
                          size: 40,
                        ), onPressed: () {  },)
                         
                        ),
                      )
                    ]
                    
                  ),
                
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        child: Container(
                            alignment: Alignment.center,
                          height: 50,
                          width: 200,
                          child: Text("Passage the garbage",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16,),),
                         
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                        child: Container(
                            alignment: Alignment.center,
                          height: 50,
                          width: 100,
                        child: Text("Income",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16,),),
                         
                        ),
                      )

                    ]
                    
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                        child: Container(
                              alignment: Alignment.topCenter,
                          height: 50,
                          width: 100,
                          child:Text("${fdModel.userweight}",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,),)
                         
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.symmetric(vertical: 20,horizontal: 110),
                        child: Container(
                            alignment: Alignment.topRight,
                          height: 50,
                          width: 100,
                        child: Text("${fdModel.useramaount}",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,),),
                         
                        ),
                      )
                    ]
                    
                  ),
                
                
                ],
              ),
            );
    
  }
}

