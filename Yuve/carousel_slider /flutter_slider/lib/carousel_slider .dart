import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slider/home/homescreen.dart';
import 'package:flutter_slider/main.dart';
import 'package:flutter_slider/person/person.dart';
import 'package:flutter_slider/search/search.dart';
import 'package:flutter_slider/slideview.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
   int selectedindex1 = 0;
   final List Screen=[
    MyHomescreen(),
    MySearch(),
    Myperson()

   ];
  void onItemTapped(int index) {
    setState(() {
      selectedindex1 = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Screen[selectedindex1]
       
         // child:img.elementAt(selectedindex1),
       

        // old code  without idicator
        /*Container(
           
          child: CarouselSlider
          (
            items:
            [
              Padding(padding:EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          
              child: Image.asset("assets/images/i1.jpg"),
              ),
            Padding(padding:EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Image.asset("assets/images/i2.jpg"),
            ),
            Padding(padding:EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                     child: Image.asset("assets/images/i3.jpg"),
            ),
            Padding(padding:EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Image.asset("assets/images/i4.jpeg"),
            ),

            ],
            options: CarouselOptions
            (
                height: 200,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              
                scrollDirection: Axis.horizontal, 
            )
          )

      
      ) */
    
      
      
              , bottomNavigationBar: BottomNavigationBar(
                items:const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',  
            backgroundColor: Color.fromARGB(255, 163, 175, 76)),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search),label: 'Search', backgroundColor: Color.fromARGB(255, 163, 175, 76)),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person),label: 'Person', backgroundColor: Color.fromARGB(255, 163, 175, 76)),
                ],
                type: BottomNavigationBarType.fixed,
                currentIndex: selectedindex1,
                fixedColor: Color.fromARGB(255, 214, 94, 63),
                iconSize: 40,
                elevation: 5,
                onTap: onItemTapped,
              )
    );
  }

 
}