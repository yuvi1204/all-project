import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project3/ui/prise list/prise.dart';
import 'package:flutter_project3/widgets/myprise_list.dart';

class Myprise extends StatefulWidget {
  const Myprise({Key? key}) : super(key: key);
  @override
  State<Myprise> createState() => _MypriseState();
}

class _MypriseState extends State<Myprise> {

  List<ItemModel>dummydata=[
     ItemModel(
        Weight:'1kg',
        Material:'Plastic',
        Price:'+1.50 '
    ),
    ItemModel(
        Weight:'1kg',
        Material:'Glass',
        Price:'+2.25 '
    ),
    
    ItemModel(
        Weight:'1kg',
        Material:'Organic',
        Price:'+1.75 '
    ),
     ItemModel(
        Weight:'1kg',
        Material:'Paper',
        Price:'+1.50 '
    ),
     ItemModel(
        Weight:'1kg',
        Material:'Other',
        Price:'+1.25 '
    ),
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(children: [
          SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              child: Text(
                'Prise List',
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
                      'Weight',
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
                      'Material',
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
                      'Price',
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
          SizedBox(
            height: 20,
          ),
          Container(
            height: 400,
            child: ListView.separated(
              physics: AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return MypriseList(
                    itemModel: dummydata[index]
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                      height: 1.0,
                    ),
                itemCount: 5),
          ),
          Container(
              padding: EdgeInsets.only(top: 10, left: 30, right: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff3dd7cd), shape: StadiumBorder()),
                  child: Text('Ok'),
                  onPressed: () {}))
        ])));
  }
}
class ItemModel {
  String Weight;
  String Material;
  String Price;
 ItemModel({required this.Weight,required this.Material,required this.Price});

}
