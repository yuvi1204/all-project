import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_album_block/ui/home.dart';

class albumlist extends StatelessWidget {
  albums1Model al;
   albumlist({Key? key,required this.al}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            
            child: Text("${al.id}")),
          SizedBox(height: 5,),

          Container(
             padding: EdgeInsets.symmetric(horizontal: 20),
            
            child: Text("${al.title}"),
            
            )
        ],

      ),

    );
  }
}