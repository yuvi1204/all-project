import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bottombar/location/location.dart';

class MyLocation extends StatefulWidget {
  const MyLocation({Key? key}) : super(key: key);

  @override
  State<MyLocation> createState() => _MyLocationState();
}

class _MyLocationState extends State<MyLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
          body: Container(
          height: 500.0,
        
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/canada.jpg"),
                fit: BoxFit.cover,
            ),
            boxShadow: [new BoxShadow(color: Colors.black, blurRadius: 0.0)],
            color: Colors.green),
          )
    );
    
  }
}