import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../homescren.dart';

class MyHomeList extends StatelessWidget {
  MyHomeList({Key? key, required this.pi}) : super(key: key);

  ImgModel pi;

  @override
  Widget build(BuildContext context) {
    return Container(
      
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
        
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          border: Border.all(width: 1, color: Colors.black)
        ),
        child: Image.asset(
          "${pi.imagesUrl}",
          height: 20,
          width: 20,
          fit: BoxFit.fill,
        ),
      ),
      Container(
        child: Text("${pi.name}")
      ),
    ]));
  }
}
