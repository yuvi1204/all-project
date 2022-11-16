import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project3/ui/prise%20list/prise.dart';

class MypriseList extends StatelessWidget {
   MypriseList({Key? key, required this.itemModel}) : super(key: key);

  ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
                height: 30,
                width: 110,
                child: Center(
                    child: Text(
                  "${itemModel.Weight}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
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
                child: Center(
                    child: Text(
                  "${itemModel.Material}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
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
                child: Center(
                    child: Text(
                  "${itemModel.Price}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ))),
          )
        ],
      ),
    );
  }
}
