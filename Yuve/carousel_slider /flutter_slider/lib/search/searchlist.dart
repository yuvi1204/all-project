import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slider/search/search.dart';
import 'package:flutter_slider/search/searchlist.dart';



class MySearchlist extends StatelessWidget {
  MySearchlist({Key? key, required this.imgModel}) : super(key: key);

  ImgModel imgModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child:Column( 

        
    children:  
        [
          Container(
            decoration : BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey)
            ),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /*Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(

                  child: TextField(
                     decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.blue)),
                          icon: Icon(
                            Icons.search,
                            size: 40,
                          ),
                     )
                  ),
                )
              
              ),*/
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 100,
                  child: Image.asset(
                    "${imgModel.imagesUrl}",
                    height: 200,
                    width: 100,fit: BoxFit.cover,
     
                  ),

                  //color: Color(0xff3dd7cd),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  
                    height: 30,
                    width: 100,
                    child: Text(
                      "${imgModel.name}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    )),
              )
            ],
        ),
          ),
       
      ],

      ) 
    );
    
  }
}