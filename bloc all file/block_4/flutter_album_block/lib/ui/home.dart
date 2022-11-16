import 'package:flutter/material.dart';
import 'package:flutter_album_block/widget/albumlist.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter_album_block/bloc/bloc.dart';
//import 'package:flutter_album_block/bloc/event.dart';
//import 'package:flutter_album_block/bloc/state.dart';
//import 'package:flutter_album_block/widget/albumlist.dart';

//import 'package:http/http.dart';

//import "package:flutter_bloc/flutter_bloc.dart";

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  //late AlbumBloc albumBloc;
  List <albums1Model>lst=[
    albums1Model('1', 'Nothing is impossible. The word itself says'),
    albums1Model('2',"The bad news is time flies. The good news is you're the pilot."),
    albums1Model('3', "Success is not final, failure is not fatal: it is the courage to continue that counts."),
    albums1Model('4', "You are never too old to set another goal or to dream a new dream."),
    albums1Model('5', "Spread love everywhere you go."),

  ];


  @override
  /*void initState() {P
    albumBloc = context.read<AlbumBloc>();
    albumBloc.add(FetchAlbumEvent());

    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context,index){
                return albumlist(al: lst[index]);
              },
               separatorBuilder: (context,index){
                return Divider(
                  thickness: 2,
                );
               },
                itemCount: 5
                
                )




         /*   BlocBuilder<AlbumBloc, AlbumState>(
                builder: (BuildContext context, AlbumState state) {
              if (state is AlbumInitialState) {
                return Container(
                  padding: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                );
              } else if (State is NoAlbumState) {
                return Container(
                  child: CircularProgressIndicator(),
                );
              } else if (state is AlbumLoadedState) {
                return Expanded(
                  child: ListView.builder(
                      physics: AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: state.data.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Expanded(
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        child: Row(
                                      children: [
                                        Text(
                                          "UserId :- ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          "${state.data[index].id}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                        child: Row(
                                      children: [
                                        Text(
                                          "id :- ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.indigo),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          "${state.data[index].userid}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.indigo),
                                        ),
                                      ],
                                    )),
                                    Container(
                                        child: Row(
                                      children: [
                                        Text(
                                          "Title :- ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.yellow),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          "${state.data[index].title}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.yellow),
                                        ),
                                      ],
                                    )),
                                  ],
                                )),
                          ),
                        );
                      }),
                );
              } else if (state is AlbumErrorState) {
                return Text(state.message);
              }
              return SizedBox();
            })*/

          ],
        ),
      )),
    );
  }
}
class albums1Model {

 String? id;
 String? title;

  
  albums1Model( this.id,this.title);
}