import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_1/home.dart';
import 'package:flutter_test_1/widgets/widgetimg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MySpecaililist extends StatelessWidget {
  MySpecaililist({Key? key, required this.imgModel}) : super(key: key);

  ImgModel imgModel;

  @override
  Widget build(BuildContext context) {
    return Container(
    //  height: 200,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            //  height: 200,
              width: 150,
               decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(imgModel.imagesUrl),
                                      fit: BoxFit.cover)),
          /*  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "${imgModel.imagesUrl}",
              //  height: 205,
              ),
            ),*/

            //color: Color(0xff3dd7cd),
          ),
           Padding(
                              padding: const EdgeInsets.only(top : 95.0,),
                              child: Container(
                                height: 30,
                                width: 150,
                                decoration: BoxDecoration(
                                 /*   borderRadius: BorderRadius.only(
                                   
                                       bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0)
                                    ),*/
                                    color: Colors.black54),
                                alignment: Alignment.center,
                                child: Text(
                                  "${imgModel.name}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),

                             Padding(
                              padding: const EdgeInsets.only(top : 125.0,),
                              child: Container(
                               // height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                  
                                    borderRadius: BorderRadius.only(
                                   
                                       bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0)
                                    ),
                                    color: Colors.black54),
                                alignment: Alignment.center,
                                child: Text(
                                  "${imgModel.price}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
         /* Container(

           
             // padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "${imgModel.name}",
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              )),*/
        /*  Container(
              child: Text(
            "${imgModel.price}",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ))*/
        ],
      ),
    );
  }
}
