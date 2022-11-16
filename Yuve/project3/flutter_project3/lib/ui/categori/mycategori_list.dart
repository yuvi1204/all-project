import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project3/ui/categori/categori.dart';
import 'package:flutter_project3/ui/categori/mycategori_list.dart';



class Mycategorilist extends StatelessWidget {
  Mycategorilist({Key? key, required this.imgModel}) : super(key: key);

  ImgModel imgModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 50,
              child: Image.asset(
                "${imgModel.imagesUrl}",
                height: 100,
                width: 100,
              ),

              //color: Color(0xff3dd7cd),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              
                height: 30,
                width: 60,
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
    );
  }
}
