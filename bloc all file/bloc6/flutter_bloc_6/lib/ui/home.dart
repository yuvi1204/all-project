import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc_6/bloc/bloc.dart';
import 'package:flutter_bloc_6/bloc/event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_6/bloc/state.dart';
import 'package:flutter_bloc_6/widget/commwid.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CommentBloc? commentBloc;
  @override
  void initState() {
    commentBloc = BlocProvider.of<CommentBloc>(context);
    commentBloc!.add(FetchCommentEvent());
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Comment"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<CommentBloc, CommentState>(
              builder: (BuildContext context,CommentState state) {
                if(state is CommentInitialState || state is CommentLoadingState) {
                  return Container(
                     padding: EdgeInsets.only(top: 250),
                       alignment: Alignment.center,
                        child: CircularProgressIndicator(),
                  );
                }
                if(state is CommentLoadedState) 
                {                        
                   return Container(
                    child: ListView.separated(
                      shrinkWrap: true,
                     physics: AlwaysScrollableScrollPhysics(),
                  //   scrollDirection: Axis.vertical,
                     itemBuilder: (context,index){
                                  return Commentlist(cl: state.data[index]);
                                }, 
                    separatorBuilder: (context,index) {
                                  return SizedBox();
                                 },
                    itemCount: state.data.length,                 
                    )              
                  );
                }
                if (state is CommentErrorState ) { 
               return Text(state.message.toString());
                    }
                    return SizedBox();
              },          
            )
          ],
        ),
      ),
    ); 
  }
}
