import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_socialmedia_aap/models/post_list.dart';

class PostsList extends StatelessWidget {
  PostModel? postModel;
  
  PostsList({Key? key, this.postModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                padding: EdgeInsets.all(1), 
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(30), // Image radius
                    child: Image.asset(("${postModel?.profileUrl}"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "${postModel?.username}",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
             
              Container(
                padding: EdgeInsets.only(left: 240),
                child: Icon(Icons.more_vert)
                )
            ],
          ),
          SizedBox(
            height: 3,
          ),
          Container(
              height: 190,
              width: 380,
              decoration: BoxDecoration(
                // border: Border.all(width: 5),

                borderRadius: BorderRadius.circular(12),
              ),
              child:
                  Image.asset(("${postModel?.postUrl}"), fit: BoxFit.cover)),
                  SizedBox(height: 5,),
                  Container(
              child: Row(
                children: [
                  Icon(Icons.favorite_border),
                  SizedBox(width: 5,),
                  Icon(Icons.chat),
                    SizedBox(width: 5,),
                  Icon(Icons.near_me),
                
                  Container(
                    padding: EdgeInsets.only(left: 250),
                    child: Icon(Icons.bookmark_border)
                    ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
