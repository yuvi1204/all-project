import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc_second/bloc/bloc.dart';
import 'package:flutter_bloc_second/bloc/event.dart';
import 'package:flutter_bloc_second/bloc/state.dart';
import 'package:flutter_bloc_second/models/albumsmodel.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart';
import "package:flutter_bloc/flutter_bloc.dart";
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  AlbumBloc? albumBloc;

  @override
  void initState() {
    albumBloc = BlocProvider.of<AlbumBloc>(context);
    albumBloc!.add(FetchAlbumEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ImageList")),
        body: SingleChildScrollView(
      child: Center(
        child: Column(children: [
          BlocBuilder<AlbumBloc, AlbumState>(
              builder: (BuildContext context, AlbumState state) {
            if (state is AlbumInitialState) {
              return Container(
                padding: EdgeInsets.only(top: 240),
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              );
            } else if (State is NoAlbumState) {
              return Container(
                child: CircularProgressIndicator(),
              );
            } else if (state is AlbumLoadedState) {
              return ImageList(state.data);
            } else if (state is AlbumErrorState) {
              return Text(state.message);
            }
            return SizedBox();
          })
        ]),
      ),
    ));
  }

  Widget ImageList(List<Photo> data) {
    
    return Container(
        // ignore: unnecessary_new
        child: new ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
           scrollDirection: Axis.vertical,
            itemCount: data.length,
             shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: CachedNetworkImage(
                              imageUrl:data[index].url ?? "",
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.fill,
                                )),
                              ),
                            ),
                          ),
                          Container(                          
                            child: Text(data[index].title ?? ""),
                          )
                        ]),
                  ));           
            }));
  }
}