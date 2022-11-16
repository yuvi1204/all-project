import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_e_commerce/model/imagemodel.dart';


class MySofalist extends StatelessWidget {
  MySofalist({Key? key, required this.imgModel}) : super(key: key);

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
                                
                              ),
                            ),

                            
        
        ],
      ),
    );
  }
}