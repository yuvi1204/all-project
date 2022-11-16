import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slider/search/searchlist.dart';

class MySearch extends StatefulWidget {
  const MySearch({Key? key}) : super(key: key);

  @override
  State<MySearch> createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  List<ImgModel> images = [
    ImgModel("assets/images/p1.jpg", "Tiger"),
    ImgModel("assets/images/p2.jpg", "Baaghi-3"),
    ImgModel("assets/images/p3.jpg", "Tanhaji"),
    ImgModel("assets/images/p4.jpg", "Major"),
    ImgModel("assets/images/p5.jpeg", "Bajiro Mastani"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    child: TextField(
                        decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.blue)),
                      icon: Icon(
                        Icons.search,
                        size: 40,
                      ),
                    )),
                  )),
              Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return MySearchlist(imgModel: images[index]);
                    },
                    separatorBuilder: (context, index) => const Divider(
                          height: 5.0,
                        ),
                    itemCount: 5),
              ),
            ],
          ),
        ));
  }
}

class ImgModel {
  String imagesUrl;
  String name;

  ImgModel(this.imagesUrl, this.name);
}
