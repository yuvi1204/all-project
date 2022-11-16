import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_socialmedia_aap/models/followmodel.dart';
import 'package:flutter_socialmedia_aap/models/messagerlist.dart';
import 'package:flutter_socialmedia_aap/widget/followlist/follow_list.dart';
import 'package:flutter_socialmedia_aap/widget/msg/msg_list.dart';

class MyFollowingDetail extends StatefulWidget {
  const MyFollowingDetail({Key? key}) : super(key: key);

  @override
  State<MyFollowingDetail> createState() => _MyFollowingDetailState();
}

class _MyFollowingDetailState extends State<MyFollowingDetail> {
  List<FollowModel> messageModel = [
    FollowModel("assets/images/reena.jpeg", 'Reena',),
    FollowModel("assets/images/satubha.jpg", 'Satubha', ),
    FollowModel("assets/images/khushi.jpeg", 'Khushi', ),
    FollowModel("assets/images/mehul.jpg", 'Mehul', ),
    FollowModel("assets/images/hitesh.jpeg", 'Hitesh', ),
    FollowModel("assets/images/piyanka.jpeg", 'Piyanka',),
    FollowModel( "assets/images/nadani.jpeg", 'Nadani', ),
    FollowModel("assets/images/jayesh.jpg", 'jayesh', ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 20,vertical: 30) ,
                child: Text("Active",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                 child: Text("Today",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
              SizedBox(height: 20,),
               ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    itemBuilder: (context, index) {
                      return FollowList(
                        followModel:followModel[index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 8,
                      );
                    },
                    itemCount:followModel.length),

          ]),

      )),

    );
    
  }
}