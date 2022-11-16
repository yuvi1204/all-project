import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Myperson extends StatefulWidget {
  const Myperson({Key? key}) : super(key: key);

  @override
  State<Myperson> createState() => _MypersonState();
}

class _MypersonState extends State<Myperson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Person",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.amber),),
      ),

    );
  }
}