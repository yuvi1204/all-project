import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../model/pic_model.dart';
import '../../utils/app_images.dart';
import '../../widget/my_albumlist.dart';

class AlbumVertical extends StatefulWidget {
  const AlbumVertical({Key? key}) : super(key: key);

  @override
  State<AlbumVertical> createState() => _AlbumVerticalState();
}

class _AlbumVerticalState extends State<AlbumVertical> {
  List<PicModel> img = [
    PicModel("${Imagelist.image1}"),
    PicModel("${Imagelist.image2}"),
    PicModel("${Imagelist.image3}"),
    PicModel("${Imagelist.image4}"),
    PicModel("${Imagelist.image5}"),
    PicModel("${Imagelist.image6}"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
              itemBuilder: (context, index) {
                return MyAlbumlist(pi: img[index], );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 10,
                );
              },
              itemCount: 6),
        )
      ],
    );
  }
}
