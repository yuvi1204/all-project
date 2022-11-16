import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_socialmedia_aap/Like/follow.dart';
import 'package:flutter_socialmedia_aap/message/message.dart';
import 'package:flutter_socialmedia_aap/models/listimages.dart';
import 'package:flutter_socialmedia_aap/profile/profile.dart';
import 'package:flutter_socialmedia_aap/widget/imagelist.dart';
import 'package:image_picker/image_picker.dart';

import '../models/post_list.dart';
import '../widget/post/posts_list.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List colors = [Colors.red, Colors.green, Colors.yellow];
  Random random = new Random();

  int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(3));
  }

  var _currentIndex = 0;
  List<listimages> images = [
    listimages('assets/images/yuvi.jpg', "Yuvraj"),
    listimages('assets/images/mehul.jpg', "Mehul"),
    listimages('assets/images/hitesh.jpeg', "Hitesh "),
    listimages('assets/images/satubha.jpg', "Satubha"),
    listimages('assets/images/jayesh.jpg', "Jayesh"),
  ];
  List<PostModel> postModel = [
    PostModel("assets/images/mehul.jpg", "Mehul", 'assets/images/story1.jpg'),
    PostModel(
        'assets/images/satubha.jpg', 'Satubha', 'assets/images/story2.jpg'),
    PostModel(
        'assets/images/hitesh.jpeg', 'Hitesh', 'assets/images/story3.jpg'),
  ];

  File? _image;
  final picker = ImagePicker();
  Future<dynamic> _OpenImage() async {
    final XFile? pickedImage =
        await picker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f4f9),
      appBar: AppBar(
        
        leading: IconButton(
          onPressed: () {
             _OpenImage();
          },
          icon: Icon(Icons.camera_alt, color: Colors.black),
        ),
        backgroundColor: Color(0xffffffff),
        elevation: 1.0,
        title: Text(
          "Yuvi",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Transform.rotate(
              child: Icon(Icons.send, color: Colors.black),
              angle: 330 * 3.14 / 180,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyMessanger()),
              );
            },
          )
        ],
      ),
      bottomNavigationBar: new Container(
        color: Colors.black,
        height: 50,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              new IconButton(onPressed: () {}, icon: Icon(Icons.home)),
              new IconButton(onPressed: null, icon: Icon(Icons.search)),
              new IconButton(onPressed: null, icon: Icon(Icons.add_box)),
              new IconButton(onPressed: () {

                 Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>MyFollowingDetail()),
              );
              }, icon: Icon(Icons.favorite)),
              new IconButton(onPressed: () {
                 Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Myprofile()),
              );
              }, icon: Icon(Icons.account_box)),
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*  Container(
              child: Stack(
                
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage( "assets/images/yuvi.jpg"),
                      ),
                      Positioned(
                        bottom: 3,
                        right: 3,
                        child:CircleAvatar(
                          radius: 10,
                          child: Icon(Icons.add,size: 15,),
                        ) 
                      )
                    ],
                  
              ),
            ),*/
            SizedBox(
              height: 8,
            ),
            Container(
              height: 80,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  itemBuilder: (context, index) {
                    return MyImage(
                      pi: images[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 5,
                    );
                  },
                  itemCount: 5),
            ),
            Container(
              height: 2,
              color: Colors.grey[300],
          
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
             
                  itemBuilder: (context, index) {
                    return PostsList(
                      postModel: postModel[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 5,
                    );
                  },
                  itemCount: 3),
            ),
            // PostsList(),
            SizedBox(
              height: 10,
            ),

           
          ],
        ),
      ),
    );
  }
}

