import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test_1/signin/signin.dart';
import 'package:flutter_test_1/widget/kidslist.dart';

class MyhomeScreen extends StatefulWidget {
  const MyhomeScreen({Key? key}) : super(key: key);

  @override
  State<MyhomeScreen> createState() => _MyhomeScreenState();
}

class _MyhomeScreenState extends State<MyhomeScreen> {
  List<listkids> images = [
    listkids(
      'assets/images/speling.png',"Spelling"),
    listkids(
      'assets/images/maths.png',"Maths"),
    listkids(
      'assets/images/drawing1.jpg',"Drawing"),
    listkids(
      'assets/images/puzzle.jpg',"Puzzle"),
    listkids(
      'assets/images/song.jpeg',"Song"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splacescreen.png"),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(Colors.transparent, BlendMode.darken))),
                  
      child: Scaffold(
        appBar:PreferredSize(
                  preferredSize: Size.fromHeight(20.0),
                  child: AppBar(
                    automaticallyImplyLeading: false,
                     elevation: 0,
            backgroundColor: Colors.transparent,
             leading: GestureDetector(
                    onTap: () {
                      Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MySignIn()),);  },
                    child: Icon(
                      Icons.menu,  // add custom icons also
                    ),
                     ),
                  )
              ),
        
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Container(
       
        //  height: 50,
        
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          
          padding: const EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Color(0xfffa74e3),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)

            ),
          ),
          child: Row(          
            children: [                          
              Expanded(
                
                child: TextField(
                  maxLines: 1,
              
                  decoration: InputDecoration(
                    prefix:Icon(Icons.search,color: Colors.black),
                      fillColor: Color(0xfff2f3f7),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Search contact or dail no",
                      filled: true,
                     ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 33,
                width: 25,
                  decoration: BoxDecoration(
          image: DecorationImage(
            
              image: AssetImage("assets/images/dial_pad.png"),
              fit: BoxFit.cover,
              )),
              )
             
            ],
          ),
        ),
      ),
             

        ),
        
        body: Container(
          child: SafeArea(
              child: SingleChildScrollView(
            child: Column(
           
       
              children: [
              
                SizedBox(
                  height: 10,
                ),
             
                Padding(
                  padding: const EdgeInsets.only(left: 240),
                  child: Container(
                         alignment: Alignment.topRight,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                     
                    child: ListView.separated(
                      
                        shrinkWrap: true,
                      //  padding: EdgeInsets.symmetric(horizontal: 30),
                      
                        itemBuilder: (context, index) {
                          return MyKidsList(
                            pi: images[index],

                          );
                          
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 5,
                          );
                        
                        },
                        
                        itemCount: 5),
                       
                  ),
                ),
          
               
              ],
            ),
            
          )),
           
        ),
      ),
    );
  }
}

class listkids {
  String imagesUrl;
   String name;

  listkids(
    this.imagesUrl,
    this.name,);

}
