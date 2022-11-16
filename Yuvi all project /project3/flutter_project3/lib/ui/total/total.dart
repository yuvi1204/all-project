import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_project3/ui/total/mytotallist.dart';
import 'package:flutter_project3/ui/total/total.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyTotal extends StatefulWidget {
  const MyTotal({Key? key}) : super(key: key);

  @override
  State<MyTotal> createState() => _MyTotalState();
}

class _MyTotalState extends State<MyTotal> {
  List<MonthModel>day=[
   MonthModel("January ", "12 kg"),
    MonthModel("February ", "7 kg"),
     MonthModel("March ", "13 kg"),
      MonthModel("April ", "15 kg"),
       MonthModel("May ", "8 kg"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                child: Text(
                  'Total kg per month ',
                  style: TextStyle(
                      color: Color(0xff3dd7cd),
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
              )
            ]),
            SizedBox(
              height: 20,
            ),
            Container(
              
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                      child: Container(
                          alignment: Alignment.topCenter,
                          height: 30,
                          width: 70,
                          child: Text(
                            "75 kg",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                      child: Container(
                        alignment: Alignment.topRight,
                        height: 30,
                        width: 100,
                        child: Text(
                          "+672.50",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 45),
                      child: Container(
                          alignment: Alignment.topLeft,
                          height: 30,
                          width: 100,
                          child: Center(
                            child: Text(
                              "Plastic",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 80),
                      child: Container(
                          alignment: Alignment.topRight,
                          height: 30,
                          width: 100,
                          child: Center(
                            child: Text(
                              "Income",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                            ),
                          )),
                    ),
                  ]),
                 /* LinearProgressIndicator(
                    value: 5,
                    backgroundColor: Colors.blue,
                  ),*/
                  SizedBox(
                    height: 10,
                  ),
                   LinearProgressIndicator(
          backgroundColor: Colors.cyan[100],
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.purple),)
                  

                  
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
            height: 400,
            child: ListView.separated(
              physics: AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return  MyTotallist(
                    monthModel:day[index]
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                      height: 1.0,
                    ),
                itemCount: 5),
          )
         

          ],
        ),
      ),
    );
  }
}
class MonthModel{
  String month;
  String  kg;
  MonthModel(this.month,this.kg);

}
