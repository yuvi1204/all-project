import 'package:flutter/material.dart';
import 'package:flutter_project3/main.dart';
import 'package:flutter_project3/ui/recycle waste/recycle waste.dart';
import 'package:flutter_project3/ui/recycle%20waste/myrecyclelist.dart';

class MyRecycle extends StatefulWidget{
  
  const MyRecycle( {Key?key }):super(key: key);
 
    @override
  State<MyRecycle> createState() => _MyRecycleState();
}
class _MyRecycleState extends State<MyRecycle>
{
  List <RcModel>waste=[
 
        RcModel("5 kg", "+ 12.50"),
        RcModel("7 kg","7.25"),
        RcModel("10 kg","15.50"),
        RcModel("3 kg ","1.75"),
        RcModel("2 kg ","7.20"),

  ];


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
          SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              child: Text(
                'My Recycled Waste',
                style: TextStyle(
                    color: Color(0xff3dd7cd),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            )
          ]),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    height: 30,
                    width: 110,
                    //color: Color(0xff3dd7cd),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(40.0),
            bottomLeft: Radius.circular(40.0)),
                      shape: BoxShape.rectangle,
                      color: Color(0xff3dd7cd),
                    ),
                    child: Center(
                        child: Text(
                      '13 Apr',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    height: 30,
                    width: 110,
                    //color: Color(0xff3dd7cd),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle, color: Color(0xff3dd7cd)),
                    child: Center(
                        child: Text(
                      '14 Apr',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    height: 30,
                    width: 110,
                    //color: Color(0xff3dd7cd),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle, color: Color(0xff3dd7cd)),
                    child: Center(
                        child: Text(
                      '15 Apr',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ))),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    height: 30,
                    width: 110,
                    //color: Color(0xff3dd7cd),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0)),
                        shape: BoxShape.rectangle, color: Color(0xff3dd7cd)),
                    child: Center(
                        child: Text(
                      '16 Apr',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ))),
              )
            ],
          ),
          SizedBox(height: 20,),
           Container(
            height: 400,
            child: ListView.separated(
              physics: AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return  MyRecyclelist(
                    recycleModel:waste[index]
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                      height: 1.0,
                    ),
                itemCount: 5),
          )


          ]
        )
      )
          
    
    );
  }      
}
class RcModel {
 
  String MWeight;
  String MAmaount;
  
  RcModel(this.MWeight,this.MAmaount);

}     
