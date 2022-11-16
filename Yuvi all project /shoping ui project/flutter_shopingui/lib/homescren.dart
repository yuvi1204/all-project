import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shopingui/image.dart';
import 'package:flutter_shopingui/widgets/homelist.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  List<ImgModel> images = [
    ImgModel("${AppImages.image1}", "Menu"),
    ImgModel("${AppImages.image2}", "tshirt"),
    ImgModel("${AppImages.image3}", "telephone"),
    ImgModel("${AppImages.image4}", "baby"),
    ImgModel("${AppImages.image6}", "armchair"),
    ImgModel("${AppImages.image7}", "book"),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fultter Ecommerce Design",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        elevation: 8,
        backgroundColor: Colors.black12,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart, color: Colors.black),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Column(children: [
        SizedBox(
          height: 10,
        ),
        Container(
          height: 100,
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 15),
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return MyHomeList(pi: images[index]);
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 10,
                );
              },
              itemCount: images.length),
        ),
      ]),
    );
  }
}

class ImgModel {
  String imagesUrl;
  String name;

  ImgModel(this.imagesUrl, this.name);
}
