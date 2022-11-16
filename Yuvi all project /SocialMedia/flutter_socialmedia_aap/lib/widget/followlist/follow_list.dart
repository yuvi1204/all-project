import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_socialmedia_aap/models/followmodel.dart';



class FollowList extends StatelessWidget {
 FollowModel? followModel;
  
  FollowList({Key? key, this.followMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
           
            children: [
              Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(1), //
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(30), // Image radius
                    child: Image.asset(("${followModel?.profileUrl}"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Container(
                child: Column(
                
                  children: [
                  
                    Container(
                   alignment: Alignment.topLeft,
                      child: Text(
                        "${followModel?.username}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]
                )
              )
            ]
          )
        ]
      )
    );
  }
}