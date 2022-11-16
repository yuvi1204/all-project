import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_socialmedia_aap/models/listimages.dart';
import 'dart:math';


class MyImage extends StatelessWidget {
   MyImage({Key? key, required this.pi}) : super(key: key);

    listimages pi;
    final List<Color> circleColors = [Colors.red, Colors.blue, Colors.green];

  Color randomGenerator() {
        return circleColors[new Random().nextInt(3)];
      }

  @override
  Widget build(BuildContext context) {
    return Container(
    //  height: 80,
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.end,

           children: [
           
       Container(

                       margin: EdgeInsets.only(left: 10),
                      height: 60,
                      width: 60,
                              padding: EdgeInsets.all(3), // Border width
                              decoration: BoxDecoration( 
                                color: randomGenerator(),
                               shape: BoxShape.circle),
                              child: ClipOval(
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(30), // Image radius
                                  child: Image.asset((pi.imagesUrl) , fit: BoxFit.cover),
                                ),
                              ),
                            ),
      Container(
     
        child: Text(
          "${pi.name}",
          textAlign: TextAlign.start,
          style: TextStyle(
             color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
      )
    ]));
    
  }
}

