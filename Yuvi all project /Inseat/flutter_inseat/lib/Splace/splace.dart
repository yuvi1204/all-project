import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Splace extends StatefulWidget {
  const Splace({Key? key}) : super(key: key);

  @override
  State<Splace> createState() => _SplaceState();
}

class _SplaceState extends State<Splace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(         
            children: [
              Container( 
                  
                child: Image.asset("assets/images/splace.png",  height: MediaQuery.of(context).size.height,
                         width: MediaQuery.of(context).size.width, ),

              )
            ],
          ),
        
        ),
    );
   
  }
}