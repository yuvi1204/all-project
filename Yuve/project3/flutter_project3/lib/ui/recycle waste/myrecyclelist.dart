import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_project3/ui/recycle waste/recycle waste.dart';
import 'package:flutter_project3/ui/recycle waste/myrecyclelist.dart';


class MyRecyclelist extends StatelessWidget
{
  MyRecyclelist({Key? key, required this.recycleModel}) : super(key: key);

  RcModel recycleModel;

  @override
  Widget build(BuildContext context) 
  {
    return Container(

             width: 100,
             height: 200,
             decoration: BoxDecoration(
              color: Colors.white30,
              border: Border.all(width: 1,color: Colors.black87,),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          
              child: Column(
                
                
                children: [
                        Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                        child: Container(
                              alignment: Alignment.topCenter,
                          height: 50,
                          width: 100,
                          child:Text("${recycleModel.MWeight}",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,),)
                         
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.symmetric(vertical: 10,horizontal: 90),
                        child: Container(
                            alignment: Alignment.topRight,
                          height: 50,
                          width: 100,
                        child: Text("${recycleModel.MAmaount}",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,),),
                         
                        ),
                      )
                    ]
                    
                  ),
                 
                
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        child: Container(
                            alignment: Alignment.center,
                          height: 50,
                          width: 200,
                          child: Text("Pstic",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16,),),
                         
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
            
                
                
                ],
              ),
            );
    
  }
}

