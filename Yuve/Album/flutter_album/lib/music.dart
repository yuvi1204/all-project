
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_album/main.dart';
import 'package:flutter_album/music.dart';
import 'package:flutter_album/screens/album_Grid/album_grid.dart';
import 'package:flutter_album/screens/album_Grid/albumscreengrid.dart';
import 'package:flutter_album/screens/album_Vertical/album_Vertical.dart';
import 'package:flutter_album/screens/albumscreen/albumscreen.dart';
import 'package:flutter_album/screens/album_Grid/albumscreengrid.dart';



class Mymusic extends StatefulWidget {
  const Mymusic({Key? key,}) : super(key: key);

  // This widget is the root of your application.
  @override
  State< Mymusic> createState() => _MymusicState();
}

class _MymusicState extends State<Mymusic>
{


  @override
  

  Widget build(BuildContext context)
   {
    return DefaultTabController(
          length: 4, 
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              bottom: TabBar(
                
                tabs: [
      
                Tab(icon: Icon(Icons.camera,color: Colors.black),),
                Tab(icon: Icon(Icons.movie,color: Colors.black),),
                Tab(icon: Icon(Icons.star,color: Colors.black),),
                Tab(icon: Icon(Icons.lock,color: Colors.black),)
              ]),
              title: Text("Albums",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),
            ),
           

          ),
          
           body: TabBarView(

            
          //  controller: controller,
            children:
            [ 
              
              AlbumScreen() ,
              // ignore: prefer_const_constructors
              AlbumVertical(),
              AlbumGrid(),
             MyAlbumscreen3(),
              

              ]
            )
            
    )
    );
  }
}

      