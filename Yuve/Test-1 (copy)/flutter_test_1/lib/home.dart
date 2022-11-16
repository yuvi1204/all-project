import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test_1/maincategory.dart';
import 'package:flutter_test_1/toppick.dart';
import 'package:flutter_test_1/widgets/special.dart';
import 'package:flutter_test_1/widgets/widgetimg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int page = 0;
  int selectedindex1 = 0;
  List img = [
    "assets/images/p1.jpg",
    "assets/images/p2.jpg",
    "assets/images/p3.jpg",
  ];
  List<ImgModel> images = [
    ImgModel("assets/images/p4.jpg", "Medium Pizza", "\$ 10.0"),
    ImgModel("assets/images/p5.jpg", "Italiyan Pizza", "\$ 5.0"),
    ImgModel("assets/images/p6.jpeg", "Test", "\$ 20.0"),
  ];
  @override
  Widget build(BuildContext context) {
   //   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Delivery Address",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          elevation: 8,
          backgroundColor: Colors.white,
          actions: [
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.shopping_cart,
                  color: Color(0xffff4c02),
                )),
          ],
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color:  Color(0xffff4c02),
                  // size: 44, // Changing Drawer Icon Size
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            
        ),
         drawer: Drawer(
        
          child: ListView(
             padding: EdgeInsets.zero,
            children: [
            DrawerHeader(
             //    margin: EdgeInsets.zero,
      //  padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  color:  Color(0xffff4c02),
                 /* borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(30.0),
                     topRight: Radius.circular(30.0),
                  )*/
              ),
              child: Column(
                children: [
                  Container(
                   // padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.topRight,
                    height: 5,
                    child: Icon(Icons.clear, color: Colors.white,),
                         
         
                  ),

                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                           image: DecorationImage(
                            image: AssetImage("assets/images/yuvi.jpg",),
                            
                             fit: BoxFit.fill
                           )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 48),
                        child: Container(
                            margin: EdgeInsets.only(left: 16),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                             Text('Yuvi Solanki',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                            Text('yuvisolanki166@gmail.com',style: TextStyle(color: Colors.white,fontSize: 10),),

                          ]

                            ),

                        ),
                      )
                    ],

                  ),
                ],
              ),
            
               
                   
          //      Text('John Doe',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
             //    Text('john.doe@gmail.com',style: TextStyle(color: Colors.white,fontSize: 16),),
                
             /*  currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/john.jpeg"),
                 ),*/
                
                 ),
                 ListTile(
                leading: Icon(Icons.person),
                title: Text('My Profile')   
              ),
               ListTile(
                leading: Icon(Icons.person),
                title: Text('My Business')   
              ),
              ListTile(
                leading: Icon(Icons.work),
                title: Text('Business Directory')   
              ),
               ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notification')   
              ),
              ListTile(
                leading: Icon(Icons.image),
                title: Text('Gallery')   
              ),
               ListTile(
                leading: Icon(Icons.help_outline),
                title: Text('Complains')   
              ),
                 
            ],
            

          ),

         ),
       
        body: SafeArea(
            child: SingleChildScrollView(
          //  child: Text("Home Screen",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.amber),),
          child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                height: 10,
              ),
              CarouselSlider.builder(
                itemCount: img.length,
                options: CarouselOptions(
                    //  viewportFraction: 0.6,
                    height: 150,
                    //enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        page = index;
                      });
                    }),
                itemBuilder: (context, index, realIndex) {
                  return MyWidgetimg(
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
                            ? Color(0xffff4c02)
                            : Color.fromRGBO(0, 0, 0, 0.4),
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
             //   Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  Text(
                    "Specials/ Combos",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  //   SizedBox(width: 70,),
                ]),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
             
                height: 150,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    // physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return MySpecaililist(imgModel: images[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 15.0,
                      );
                    },
                    itemCount: 3),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Picks",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyTopPick()),
                            );
                          },
                          child: Text(
                            'View all',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffff4c02),
                              decoration: TextDecoration.underline,
                            ),
                          ))
                    ]),
              ),
              Container(
               // padding: EdgeInsets.symmetric(horizontal: 12),
                height: 150,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    // physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return MySpecaililist(imgModel: images[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 15.0,
                      );
                    },
                    itemCount: 3),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                  //Padding(padding: EdgeInsets.symmetric(horizontal: 9)),
                  Text(
                    "Main Category",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  // SizedBox(width: 138,),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyMainCategory()),
                        );
                      },
                      child: Text(
                        'View all',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffff4c02),
                          decoration: TextDecoration.underline,
                        ),
                      ))
                ]),
              ),
              Container(
              //  padding: EdgeInsets.symmetric(horizontal: 12),
             
                height: 150,
             
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                     padding: EdgeInsets.symmetric(horizontal: 10),
                    // physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return MySpecaililist(imgModel: images[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 15.0,
                      );
                    },
                    itemCount: 3),
              ),
              SizedBox(height: 10,)
            ]),
          ),
        )));
  }
}

class ImgModel {
  String imagesUrl;
  String name;
  String price;

  ImgModel(this.imagesUrl, this.name, this.price);
}
