import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_album/model/pic_model.dart';

import '../../utils/app_images.dart';
import '../../widget/my_albumlist.dart';

class AlbumGrid extends StatefulWidget {
   AlbumGrid({Key? key}) : super(key: key);
   
  @override
  State<AlbumGrid> createState() => _MyAlbumGridState();
}

class _MyAlbumGridState extends State<AlbumGrid> {
  List<PicModel> img = [
    PicModel("${Imagelist.image1}"),
    PicModel("${Imagelist.image2}"),
    PicModel("${Imagelist.image3}"),
    PicModel("${Imagelist.image4}"),
    PicModel("${Imagelist.image5}"),
    PicModel("${Imagelist.image6}"),
  ];
 
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
        body:Padding(
            
          padding: EdgeInsets.symmetric(horizontal: 10),
          child:GridView.builder(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                
                childAspectRatio:  1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
                itemCount: 6,
                itemBuilder: (context, index) {
                Padding(padding: EdgeInsets.symmetric(horizontal: 20));
                return MyAlbumlist(pi: img[index]
                
                );
              }, )
        )
        // MyAlbumlist(pi:PicModel.img);       
    );
  }
  
}

