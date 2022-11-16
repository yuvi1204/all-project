import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_album/model/pic_model.dart';

import '../../utils/app_images.dart';
import '../../widget/my_albumlist.dart';

class MyAlbumscreen3 extends StatefulWidget {
  const MyAlbumscreen3({Key? key}) : super(key: key);

  @override
  State<MyAlbumscreen3> createState() => _MyAlbumscreen3State();
}

class _MyAlbumscreen3State extends State<MyAlbumscreen3> {
  List<PicModel> img = [
    PicModel("${Imagelist.image7}"),
    PicModel("${Imagelist.image8}"),
    PicModel("${Imagelist.image9}"),
    PicModel("${Imagelist.image10}"),
    PicModel("${Imagelist.image11}"),
    PicModel("${Imagelist.image12}"),
    PicModel("${Imagelist.image13}"),
    PicModel("${Imagelist.image14}"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: GridView.builder(
              // itemCount: img.length,
              shrinkWrap: true,

              /* gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.8,
           
          crossAxisCount: 3,
          mainAxisSpacing: 2,
          crossAxisSpacing:2,
        ), itemBuilder: ( context, index,)
         {  
            
                Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 1),);
                return MyAlbumlist(pi: img[index],);
                
        },*/

              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 130,
                  childAspectRatio: 1,
                   crossAxisSpacing: 1,
                  mainAxisSpacing: 1),

              itemCount: 8,

              itemBuilder: (
                context,
                index,
              ) {
                return MyAlbumlist(pi: img[index]);
              },
            )));

    //);
  }
}
