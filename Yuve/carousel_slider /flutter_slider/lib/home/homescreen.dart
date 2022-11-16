import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slider/slideview.dart';
import 'package:carousel_slider/carousel_slider.dart';


class MyHomescreen extends StatefulWidget {
  const MyHomescreen({Key? key}) : super(key: key);

  @override
  State<MyHomescreen> createState() => _MyHomescreenState();
}

class _MyHomescreenState extends State<MyHomescreen> {
  int page = 0;
  int selectedindex1 = 0;
  List img = [
    "assets/images/i1.jpg" ,
    "assets/images/i2.jpg",
    "assets/images/i3.jpg",
    "assets/images/i4.jpeg",
  
  ];
  List mov = [
    "assets/images/m1.jpeg" ,
    "assets/images/m2.jpg",
    "assets/images/m3.jpg",
    "assets/images/m4.jpg",
  
  ];
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      //  child: Text("Home Screen",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.amber),),
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            child: 
                Column(mainAxisAlignment: MainAxisAlignment.start, 
                children: [
                 
                  Text("Web series",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color:Colors.black87),),
              CarouselSlider.builder(
                itemCount: img.length,
                options: CarouselOptions(
                    height: 200,
                    
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    onPageChanged: (index, reason) {

                      setState(() {
                        page = index;
                      });
                    }),
                itemBuilder: (context, index, realIndex) {
                  return MySlideviewStateful(
                    imageUrl: img[index],
                  );
                },
              ),
              
              Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: img.map((url) {
                  int index = img.indexOf(url);
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Container(
                      width: 8,
                      height: 8,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: page == index
                            ? Color.fromRGBO(0, 0, 0, 0.9)
                            : Color.fromRGBO(0, 0, 0, 0.4),
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 5,),
               Text("Movie",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color:Colors.black87),),

             SizedBox(height: 5,),
              CarouselSlider.builder(
                itemCount: mov.length,
                options: CarouselOptions(
                    height: 200,
                    
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    onPageChanged: (index, reason) {

                      setState(() {
                        page = index;
                      });
                    }),
                itemBuilder: (context, index, realIndex) {
                  return MySlideviewStateful(
                    imageUrl: mov[index],
                  );
                },
              ), 
            ]),
          ),
        ),

      ),
    );
  }
}