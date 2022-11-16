import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project3/ui/categori/categori.dart';
import 'package:flutter_project3/ui/categori/mycategori_list.dart';
import 'package:flutter_project3/ui/prise%20list/prise.dart';

class Mycategori extends StatefulWidget
{
    const Mycategori({Key?key}):super(key: key);
     @override
  State<Mycategori> createState() => _MycategoriState();
}
 class _MycategoriState extends State<Mycategori>{

  List <ImgModel>images=[
    ImgModel(
     
     "assets/images/palstic.png","Plastic"
       ),
   
    ImgModel(
       "assets/images/apple.png","Organic"
       ),
       ImgModel(
        "assets/images/book.png","Paper"
       ),
       ImgModel(
       "assets/images/glass.png","Glass"
       ), 
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
                Container(child: Text('Categories', style: TextStyle(
                              color: Color(0xff3dd7cd), fontWeight: FontWeight.bold,fontSize: 30),),

                ),
               
              ]
              
            ),
            SizedBox(height: 35,),
            Container(
              height: 400,
              child: ListView.separated(
                itemBuilder:(context, index)
                 {
                    return Mycategorilist(imgModel: images[index]);
                },
                separatorBuilder: (context, index) => const Divider(
                      height: 1.0,),
                itemCount: 4
                ),
                
              ),
          ],

      ),
          
        
      ) 
        
    );
    
  }
}     
 class ImgModel 
 {
  String imagesUrl;
  String name;


ImgModel(this.imagesUrl, this.name);
  
 }   