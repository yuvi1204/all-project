import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_e_commerce/Favorite/favorite_page.dart';
import 'package:flutter_e_commerce/model/imagemodel.dart';
import 'package:flutter_e_commerce/widget/sofa_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ImgModel> images = [
    ImgModel(
      "assets/images/sofa1.png",
    ),
    ImgModel(
      "assets/images/sofa2.png",
    ),
    ImgModel(
      "assets/images/sofa3.png",
    ),
    ImgModel(
      "assets/images/sofa4.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background3.jpeg"),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.transparent, BlendMode.darken))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0), // here the desired height
            child: AppBar(
              automaticallyImplyLeading: false, // hides leading widget
              toolbarHeight: 100,
              elevation: 0,
              backgroundColor: Colors.transparent,

              actions: [
                Column(
               
                  children: [
                    SizedBox(
                      height: 20,
                    ), 
                    
                                  
                    
                    Row(
                   
                      children: [

                         Container(
                         padding: EdgeInsets.only(right: 115),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Color(0xffdae1e3),
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.notes,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            Container(
                
                              child: Image.asset("assets/images/girlsicon.png",height: 50,width: 50,),
   
                            ),

                           Container(
                               child: Text("MEGAN",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),)
                           ),


                          ],
                          ),
                         
                        Container(
                          padding: EdgeInsets.only(left: 115),
                          child: Container(
                            
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Color(0xffdae1e3),
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.shopping_cart,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],

             
            ),
          ),
          bottomNavigationBar: new Container(
              color: Colors.white,
              height: 50,
              child: BottomAppBar(
                 color: Color(0xff122a3f),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                      new IconButton(onPressed: () {}, icon: Icon(Icons.home),color: Colors.white),
                      new IconButton(onPressed: (){}, icon: Icon(Icons.search),color: Colors.white),
                      new IconButton(onPressed: (){
                        Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyFavoritePage()),
              );
                      }, icon: Icon(Icons.favorite_border),color: Colors.white),
                      new IconButton(onPressed: (){}, icon: Icon(Icons.person_outline),color: Colors.white),

                  ],
                ),
              ),

          ),
           floatingActionButton:
           
           FloatingActionButton(child: Icon(Icons.mic ), onPressed: () {},),
           floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          body: Container(
            child: SafeArea(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 22),
                        child: Text(
                          "Shope",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 22),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color(0xff122a3f),
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.filter_list,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20, ),
                  Container(
                    height: 350,
                   
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      physics: AlwaysScrollableScrollPhysics(),
                      children: images
                          .map((item) => Container(
                                height: MediaQuery.of(context).size.height,
                               width: MediaQuery.of(context).size.width,
                                 child:   Column(
                                   children: [
                                     Container(
                                          height: 130,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            color:Color(0xffe8e9eb), 
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                  image: AssetImage(item.imagesUrl),
                                                  fit: BoxFit.cover)),
                                        ),
                                        
                                        Expanded(
                                          child: Container(
                                            height: 20,
                                                                             
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Modern Sofa",
                                            style: TextStyle(
                                              fontSize: 14,
                                                 color:Color(0xff96a0ab),
                                            ),
                                          ),
                                         ),
                                         
                                        ),
                                   ],
                                 ),
                                
                                     ))
                          .toList(),
                    ),
                  )),
                SizedBox(height: 5,),
                ],
              ),
            )),
          ),
        ));
  }
}
