import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bottombar/home/home.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
          height: 300.0,
        
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/backgrounimg.jpg"),
                fit: BoxFit.cover,
            ),
            boxShadow: [new BoxShadow(color: Colors.black, blurRadius: 0.0)],
            color: Colors.green),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 60.0, bottom:18.0, right: 18.0, left: 105.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 150.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: new AssetImage("assets/images/profile.jpg"),
                           fit: BoxFit.cover
                      )
                    ),
                  ),
                  
                ],
              ),
            ),
            SizedBox(height: 5,),
            Padding(padding: EdgeInsets.only(top: 7,bottom: 18,right: 5,left: 145),
            child: Row(
                        children: [
                                    Container(
                                                height: 30,
                                                width: 100,
                                                child: Text("Mehul",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black38),),

                                    )

                        ],

            ),
            ),
          /* Positioned(
              top: 100.0, // (background container size) - (circle height / 2)
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                   image: DecorationImage(
                          image: new AssetImage("assets/images/profile.jpg"),
                           fit: BoxFit.cover,
                
                   ),
                ),
              ),
            )*/
      

          ],
          
        ),
        
      ),
      
      

    );
    
  }
}