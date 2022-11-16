import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_6/model/apimodel.dart';


class Commentlist extends StatelessWidget {

  Comment cl;
  Commentlist({Key? key, required this.cl}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Card(
        margin: const EdgeInsets.all(20.0),
        color: Color.fromARGB(255, 173, 222, 177),
        shadowColor: Colors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Container(
          height: 100,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20,
                     alignment: Alignment.topLeft,
                 padding: EdgeInsets.only(left: 10),
                child: Text("No : ${cl.id}",style: TextStyle(color: Colors.redAccent),),             
              ),            
              SizedBox(height: 3,child: Divider(
                  thickness: 2,
                )),
             Container(
                height: 20,
                alignment: Alignment.topLeft,
           padding: EdgeInsets.only(left: 10),
                  child:    Text("Name:""${cl.name??''}",)
              ),
               SizedBox(height: 3,child: Divider(
                  thickness: 2,
                )),
                 Container(
                     height: 20,
                        alignment: Alignment.topLeft,
                 padding: EdgeInsets.only(left: 10),
                  child:    Text("Email:""${cl.email??''}",)
              ),
               SizedBox(height: 3,child: Divider(
                  thickness: 2,
                )),
                 Container(
                     height: 20,
                        alignment: Alignment.topLeft,
                 padding: EdgeInsets.only(left: 10),
                  child:    Text("Body:""${cl.body??''}",style: TextStyle(overflow: TextOverflow.ellipsis,),)
              ),
            ],

          ),     
        ),
      ),
    );    
  }
}