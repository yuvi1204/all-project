import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_socialmedia_aap/models/listimages.dart';
import 'package:flutter_socialmedia_aap/widget/imagelist.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({Key? key}) : super(key: key);

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
   List<listimages> images = [
    listimages('assets/images/yuvi.jpg', "Highlites"),
    listimages('assets/images/dwarka.jpeg', "jay Dwarka"),
    listimages('assets/images/rameshwaram.JPG', "Highlites "),
    listimages('assets/images/ganga ghat.jpg', "ganga ghat"),
    listimages('assets/images/jayesh.jpg', "Highlites"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff3f4f9),
      appBar: AppBar( 
        backgroundColor: Color(0xffffffff),
        elevation: 0.0,
              centerTitle: true,
        title: Text(
          "Yuvi_123",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
  
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.add_box_outlined, color: Colors.black),
            onPressed: () { },
          ),
          IconButton(
            icon:Icon(Icons.menu, color: Colors.black),
            onPressed: () { },
          )
        ],
      ),
     
      body: Container(
          width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: (40),
                    backgroundColor:  Color(0xfff3f4f9),
                    backgroundImage: AssetImage("assets/images/yuvi.jpg"),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                                Text("23",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                                Text("Posts",style: TextStyle(fontSize: 15,letterSpacing: 0.4),),
                               
                          ],
                        ),
                         SizedBox(width: 20,),
                        Column(
                          children: [
                                Text("4.5 M",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                                Text("Follower",style: TextStyle(fontSize: 15,letterSpacing: 0.4),),
                                SizedBox(width: 30,)
                          ],
                        ),
                         SizedBox(width: 20,),
                          Column(
                          children: [
                                Text("150",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                                Text("Following",style: TextStyle(fontSize: 15,letterSpacing: 0.4),),
                              
                          ],
                        ),
                          SizedBox(width: 15,)

                      ],
                    ),
                  ),
                ],
              ),
               SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.only(left: 22),
                        child: Row(
                          children: [
                            Text("Yuvraj",style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600,letterSpacing: 0.4),),
                          ],
                        ),
                      ),
                    SizedBox(height: 3,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            Text("Always Happy ",style: TextStyle(letterSpacing: 0.4),),
                          ],
                        ),
                      ),   
                      SizedBox(height: 20,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: (){}, 
                    style: OutlinedButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size(0, 30),
                      side: BorderSide(color: Colors.grey.shade400)
                    ),
                  child: Text("Edit Profile",style: TextStyle(color: Colors.black),)
                  
                  )
                  )
              ],
            ),
              SizedBox(
              height: 8,
            ),
            Container(
              height: 80,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  itemBuilder: (context, index) {
                    return MyImage(
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

            ],
          ),
        ),
      ),
     

    );
    
  }
}