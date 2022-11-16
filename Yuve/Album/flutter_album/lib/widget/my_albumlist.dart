import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/pic_model.dart';
import '../screens/albumscreen/albumscreen.dart';

class MyAlbumlist extends StatelessWidget {
  MyAlbumlist({Key? key, required this.pi}) : super(key: key);

  PicModel pi;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
        child: Image.asset(
          "${pi.imagesUrl}",
          height: 100,
          width: 100,
          fit: BoxFit.fill,
        ),
      ),
    ]));
  }
}
