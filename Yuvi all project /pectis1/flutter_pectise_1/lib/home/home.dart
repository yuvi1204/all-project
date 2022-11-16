import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_pectise_1/Widget/bezier.dart';
import 'package:image_picker/image_picker.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
             padding: EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200]
                      
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Colors.grey,),
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),
                  ),    
                  ),
                     SizedBox(width: 20,),
                    IconButton(
          onPressed: () {
             _OpenImage();
          },
          icon: Icon(Icons.camera_alt, color: Colors.black,size: 30,),
        ),
              ],
            ),
          ),
          Expanded(
            child:SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text("Stories", style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 22, letterSpacing: 1.2),),
                        Text("See Archive"),
                      ],
                    ),
                     SizedBox(height: 20,),
                     Container(
                      height: 180,
                      child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: [
                        makeStory(
                            storyImage: 'assets/Images/story1.jpg',
                            userImage: 'assets/Images/user1.jpg',
                            userName: 'Mehul Gohil'

                        ),
                         makeStory(
                            storyImage: 'assets/Images/story2.jpg',
                            userImage: 'assets/Images/user2.jpg',
                            userName: 'Yash Dodiya'
                          
                        ),
                        makeStory(
                            storyImage: 'assets/Images/story3.jpg',
                            userImage: 'assets/Images/user3.jpeg',
                            userName: 'Pradip Sejwal'
                          
                        ),
                        makeStory(
                            storyImage: 'assets/Images/story4.jpg',
                            userImage: 'assets/Images/user4.jpg',
                            userName: 'Yuvi Solanki'
                          
                        ),
                        makeStory(
                            storyImage: 'assets/Images/story5.jpeg',
                            userImage: 'assets/Images/user5.jpg',
                            userName: 'Shakti Gohil'
                          
                        ),
                        makeStory(
                            storyImage: 'assets/Images/story6.jpeg',
                            userImage: 'assets/Images/user6.jpg',
                            userName: 'Om Patel'
                          
                        ),
                        makeStory(
                            storyImage: 'assets/Images/story7.jpg',
                            userImage: 'assets/Images/user7.jpg',
                            userName: 'Sumit Donda'
                          
                        ),
                       
                      
                        
                       ],
                        
                      ),
                     ),
                      SizedBox(height: 50,),
                        makeFeed(
                          userName: 'Yuvi Solanki' ,
                          userImage: 'assets/Images/user4.jpg',
                          feedTime: '10 mins ago',
                          feedImage: 'assets/Images/feed1.jpg',
                          feedText: 'Education is the most powerful weapon which you can use to change the world.'

                        ),
                         makeFeed(
                          userName: 'Mehul Gohel' ,
                          userImage: 'assets/Images/user1.jpg',
                          feedTime: '1 hr ago',
                          feedImage: 'assets/Images/feed2.jpeg',
                          feedText: 'जीवन में शांति चाहते हैं तो दुसरों की शिकायतें करने से बेहतर है खुद को बदल लें।क्योंकि पुरी दुनिया में कारपेट बिछाने से खुद के पैरों में चप्पल पहन लेना अधिक सरल है।'

                        ),
                         makeFeed(
                          userName: 'Shakti Gohil' ,
                          userImage: 'assets/Images/user5.jpg',
                          feedTime: '2 hr ago', 
                           feedImage: '', 
                          feedText: 'You can get everything in life you want if you will just help enough other people get what they want.'

                        ),


                  ],
                ),
              
                ),
            )
            )

        ],
       
        
      ),
    );
    
  }
}
Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.6 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Text(userName, style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(userName, style: TextStyle(color: Colors.grey[900], fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                      SizedBox(height: 3,),
                      Text(feedTime, style: TextStyle(fontSize: 15, color: Colors.grey),),
                    ],
                  )
                ],
              ),
              IconButton(
                icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600],), 
                onPressed: () {},
              )
            ],
          ),
          SizedBox(height: 20,),
          Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey[800], height: 1.5, letterSpacing: .7),),
          SizedBox(height: 20,),
          feedImage != '' ?
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(feedImage),
                fit: BoxFit.cover
              )
            ),
          ) : Container(),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  makeLike(),
                  Transform.translate(
                    offset: Offset(-5, 0),
                   child: makeLove()
                  ),
                  SizedBox(width: 5,),
                  Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.grey[800]),)
                ],
              ),
              Text("400 Comments", style: TextStyle(fontSize: 13, color: Colors.grey[800]),)
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          )
        ],
      ),
    );
  }
   Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }
  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color:Color(0xffeeeeee)),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isActive ? Colors.blue : Colors.grey),)
          ],
        ),
      ),
    );
  }
    Widget makeCommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffeeeeee)),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.chat, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Comment", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
 Widget makeShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffeeeeee)),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.share, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Share", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }




  