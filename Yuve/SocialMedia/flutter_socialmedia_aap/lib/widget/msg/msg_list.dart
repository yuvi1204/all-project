import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_socialmedia_aap/models/messagerlist.dart';


class MsgList extends StatelessWidget {
  MessageModel? messageModel;
  
   MsgList({Key? key, this.messageModel}) : super(key: key);

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
                    child: Image.asset(("${messageModel?.profileUrl}"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
             SizedBox(width: 20,),
              Expanded(
                child: Column(
                
                  children: [
                  
                    Container(
                   alignment: Alignment.topLeft,
                      child: Text(
                        "${messageModel?.username}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                      SizedBox(
                  height: 2,
                ),
                    Container(
                    
                    alignment: Alignment.topLeft,
                      child: Text(
                  "${messageModel?.sentUrl}",
                  style: TextStyle(
                        color: Color.fromARGB(179, 210, 208, 208),
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                ),
                    ),
                  ],
                ),
              ),
            
             
            ],
          ),
         
         
        ],
      ),
    );
  }
}
