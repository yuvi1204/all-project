import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_5/model/model.dart';

class Albumlist extends StatelessWidget {
  Album ua;
   Albumlist({Key? key, required this.ua}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Card(
        
        margin: const EdgeInsets.all(30.0),
        color: Colors.green[50],
        shadowColor: Colors.black26,
        child: Container(
          height: 70,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20,
                     alignment: Alignment.topCenter,
                 padding: EdgeInsets.only(top: 5),
                child: Text("No : ${ua.id}"),
                
              ),
              
              SizedBox(height: 3,child: Divider(
                  thickness: 2,
                )),
              Container(
                height: 40,
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 5),
    
                  child:    Text("${ua.title??''}",)
                /*child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:),*/
    
              )
      
            ],
          ),
      
        ),
      ),
    );
    
  }
}