import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slider/slideview.dart';

class MySlideview extends StatelessWidget {
  String imageUrl;
  MySlideview({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Image.asset(imageUrl),
      ),
    );
  }
}

class MySlideviewStateful extends StatefulWidget {
  String imageUrl;
  MySlideviewStateful({Key? key, required this.imageUrl}) : super(key: key);

  @override
  State<MySlideviewStateful> createState() => _MySlideviewStatefulState();
}

class _MySlideviewStatefulState extends State<MySlideviewStateful> {
  @override
  Widget build(BuildContext context) {
    return 
Container(
    
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Image.asset(
        widget.imageUrl,
        fit: BoxFit.cover,
        width: 400,
      ),
    );
    
  }
}
