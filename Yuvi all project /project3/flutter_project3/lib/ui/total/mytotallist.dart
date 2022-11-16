import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_project3/ui/test/test.dart';
import 'package:flutter_project3/ui/total/mytotallist.dart';
import 'package:flutter_project3/ui/total/total.dart';


class MyTotallist  extends StatelessWidget
{
   MyTotallist ({Key? key, required this. monthModel}) : super(key: key);

   MonthModel monthModel;

  @override
  Widget build(BuildContext context) 
  {
    return Container(

            
          
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
                          child:Text("${ monthModel.month}",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,),)
                         
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.symmetric(vertical: 10,horizontal: 90),
                        child: Container(
                            alignment: Alignment.topRight,
                          height: 50,
                          width: 100,
                        child: Text("${ monthModel.kg}",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,),),
                         
                        ),
                      )
                    ]
                  ),
                ],
              ),
            );
    
  }
}
