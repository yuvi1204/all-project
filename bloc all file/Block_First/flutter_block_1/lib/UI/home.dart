import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_block_1/bloc/%20albumblock.dart';
import 'package:flutter_block_1/bloc/albumevent.dart';
import 'package:flutter_block_1/bloc/albumstate.dart';
import 'package:flutter_block_1/models/model.dart';
import 'package:http/http.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_block_1/bloc/ albumblock.dart';
import 'package:flutter_block_1/bloc/ albumblock.dart';
import "package:flutter_bloc/flutter_bloc.dart";

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  late AlbumBloc albumBloc;

  @override
  void initState() {
    albumBloc = context.read<AlbumBloc>();
    albumBloc.add(FetchAlbumEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<AlbumBloc,AlbumState>(
               builder: (BuildContext context, AlbumState  state) {
                  if (state is AlbumInitialState) {

                     return Container(
                      padding: EdgeInsets.only(top: 20),
                         alignment: Alignment.center,
                          child: CircularProgressIndicator(),
                     );
                   }else if(State is NoAlbumState) {
                       return Container(
                        child: CircularProgressIndicator(),
                         );
                    }else if (state is AlbumLoadedState) {
                         return Expanded(
                          child: ListView.builder(
                            physics: AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemCount: state.data.length,
                            shrinkWrap: true,
                             itemBuilder: (context, index) {

                                return Card(
                                  child: Padding(
                                    padding:EdgeInsets.symmetric(horizontal: 20),
                                    child: Expanded(
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Row(
                                              children: [
                            
                                                Text("UserId :- ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                                SizedBox(width: 3,),
                                                Text("${state.data[index].id}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                                      
                                                    ],
                                                  )
                                            ),
                                            SizedBox(height: 5,),
                                            Container(                          
                                              child: Row(
                                          
                                                children: [
                                                    Text("Id :- ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: Colors.indigo),),
                                                  SizedBox(width: 3,),
                                                  Text("${state.data[index].userId}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: Colors.indigo),),
                                                ],
                                              )
                                            ),
                                            Container(                          
                                                      child: Row(
                                                        children: [
                                                            Text("Title :- ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.yellow),),
                                                          SizedBox(width: 3,),
                                                          Text("${state.data[index].titile}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.yellow),),
                                                        ],
                                                      )
                                        
                                            ),
                                      

                                          ],
                                      ),
                                    )
                                     ),

                                );

                             }
                            
                            ),
                         );
                    }else if (state is AlbumErrorState) {
                    return Text(state.message);
          }
                    return SizedBox();
               }
            )

            
             
          ],
        ),
      )),
    );
  }
}
