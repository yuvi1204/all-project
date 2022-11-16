import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_1/widgets/widgetimg.dart';

class MyWidgetimg extends StatefulWidget {
   String imageUrl;
   MyWidgetimg({Key? key,required this.imageUrl}) : super(key: key);

  @override
  State<MyWidgetimg> createState() => _MyWidgetimgState();
}

class _MyWidgetimgState extends State<MyWidgetimg> {
  @override
  Widget build(BuildContext context) {
     return  Container(
    
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
           image: DecorationImage( image: AssetImage(
        widget.imageUrl,),
        fit: BoxFit.cover,
        //width: 400,
    )
      )
  );
    
  }
}