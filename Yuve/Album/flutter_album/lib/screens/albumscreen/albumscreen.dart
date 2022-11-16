import 'package:flutter/material.dart';
import 'package:flutter_album/utils/app_images.dart';

import '../../model/pic_model.dart';
import '../../widget/my_albumlist.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  List<PicModel> img = [
    PicModel("${AppImages.image1}"),
    PicModel("${AppImages.image2}"),
    PicModel("${AppImages.image3}"),
    PicModel("${AppImages.image4}"),
  ];
  List<PicModel> pic = [
    PicModel("${AppPicture.image1}"),
    PicModel("${AppPicture.image2}"),
    PicModel("${AppPicture.image3}"),
    PicModel("${AppPicture.image4}"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Text(
                  "Camera",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 10.0),
              height: 150,
              child: ListView.separated(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MyAlbumlist(pi: img[index]);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  itemCount: 4),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Text(
                  "Albino Blue Topaz",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 10.0),
              height: 150,
              child: ListView.separated(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MyAlbumlist(pi: pic[index]);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  itemCount: 4),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
