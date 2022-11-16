import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_5/bloc/bloc.dart';
import 'package:flutter_bloc_5/bloc/event.dart';
import 'package:flutter_bloc_5/bloc/state.dart';
import 'package:flutter_bloc_5/model/model.dart';
import 'package:flutter_bloc_5/widget/widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 /* List<UiApiModel>lst=[
    UiApiModel('1',"quidem molestiae eni."),
    UiApiModel('2', "sunt qui excepturi placeat culpa." ),
    UiApiModel('3', "omnis laborum odio." ),
    UiApiModel('4',  "non esse culpa molestiae omnis sed optio"),
    UiApiModel('5',  "eaque aut omnis a"),
    UiApiModel('6',  "natus impedit quibusdam illo est"),


  ];*/
  AlbumBloc? albumBloc;
  @override
   void initState() {
    albumBloc = BlocProvider.of<AlbumBloc>(context);
    albumBloc!.add(FetchAlbumEvent());
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("AlbumList")),
      body:Column(
        children: [
          BlocBuilder<AlbumBloc,AlbumState>(
            builder: (BuildContext context,AlbumState state){
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
                    child: ListView.separated(
                         physics: AlwaysScrollableScrollPhysics(),
                               //scrollDirection: Axis.vertical,
                         
                            //  shrinkWrap: true,
                              itemBuilder: (context,index){
                                return Albumlist(ua: state.data[index]);
                              },
                               separatorBuilder: (context,index) {
                                return SizedBox();
                               },
                               itemCount:state.data.length,
                               ),
                  );
            }else if (state is AlbumErrorState) { 
             return Text(state.message.toString());
      }
          return SizedBox();
       }
            
            )
         
      
        ],
      ) ,


    ); 
  }
}