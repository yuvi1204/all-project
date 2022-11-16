import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class MyFavoritePage extends StatefulWidget {
  const MyFavoritePage({Key? key}) : super(key: key);

  @override
  State<MyFavoritePage> createState() => _MyFavoritePageState();
}

class _MyFavoritePageState extends State<MyFavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffd2d5da),
      body: Container(
        child:SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(height: 80,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.zero,
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(

                                  color: Color(0xffbdc3c9),
                                  borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: IconButton(onPressed: (){Navigator.of(context).pop();},
                          
                           icon:Icon(Icons.arrow_back_ios,size: 20,),  ),
                          
                          ),
                     //Icon(Icons.arrow_back_ios,size: 20,),     
                      ),
                    ),
                    SizedBox(width: 80,),
                    Container(
                      alignment: Alignment.center,
                      child: Text("Favorite",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22),),
                    )
                  ],
                )
            
              ],
            ),

            
          ),
        ),
      ),
    );
      
  }
}