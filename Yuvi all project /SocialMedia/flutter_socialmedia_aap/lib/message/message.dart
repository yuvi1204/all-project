import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_socialmedia_aap/models/messagerlist.dart';
import 'package:flutter_socialmedia_aap/widget/msg/msg_list.dart';

class MyMessanger extends StatefulWidget {
  const MyMessanger({Key? key}) : super(key: key);

  @override
  State<MyMessanger> createState() => _MyMessangerState();
}

class _MyMessangerState extends State<MyMessanger> {
  TextEditingController searchController = new TextEditingController();
  List<MessageModel> messageModel = [
    MessageModel("assets/images/reena.jpeg", 'Reena', 'hi...'),
    MessageModel("assets/images/satubha.jpg", 'Satubha', 'Congratulation  '),
    MessageModel("assets/images/khushi.jpeg", 'Khushi', 'ok done'),
    MessageModel("assets/images/mehul.jpg", 'Mehul', 'kale maliye caffe'),
    MessageModel("assets/images/hitesh.jpeg", 'Hitesh', 'aje no maja avi'),
    MessageModel("assets/images/piyanka.jpeg", 'Piyanka', 'seen yesterday'),
    MessageModel( "assets/images/nadani.jpeg", 'Nadani', 'mehul tu mari rah joje'),
    MessageModel("assets/images/jayesh.jpg", 'jayesh', 'aje su thayu?.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f4f9),
      appBar: AppBar(
        leading: IconButton(
          icon: new Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Color(0xffffffff),
        elevation: 1.0,
        title: Text(
          "Yuvi_166 ",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                    child: new TextField(
                      autofocus: false,
                      controller: searchController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search item',
                        contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 15.0, 15.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Messages",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Requests",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    itemBuilder: (context, index) {
                      return MsgList(
                        messageModel: messageModel[index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 8,
                      );
                    },
                    itemCount: messageModel.length),
              ],
            ),
          )),
    );
  }
}
