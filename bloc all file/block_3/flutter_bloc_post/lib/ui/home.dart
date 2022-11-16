import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:flutter_bloc_post/bloc/bloc.dart';
import 'package:flutter_bloc_post/bloc/event.dart';
import 'package:flutter_bloc_post/bloc/state.dart';
import 'package:flutter_bloc_post/models/model.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    PostBloc? postBloc;

  @override
  void initState() {
    postBloc = BlocProvider.of<PostBloc>(context);
    postBloc!.add(FetchPostEvent());
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: Text("Post"),),
          body: Column(
            children: [
              BlocBuilder<PostBloc, PostState>(
                builder: (BuildContext context, PostState  state) {
                   if (state is PostInitialState) {

                     return Container(
                      padding: EdgeInsets.only(top: 20),
                         alignment: Alignment.center,
                          child: CircularProgressIndicator(),
                     );
                   }else if(State is NoPostState) {
                       return Container(
                        child: CircularProgressIndicator(),
                         );
                    }else if (state is PostLoadedState) {
                         return Expanded(
          child: ListView.builder(
           physics: AlwaysScrollableScrollPhysics(),
           scrollDirection: Axis.vertical,
          itemCount: state.data.length,
           shrinkWrap: true,
          itemBuilder: (context, index) {
              return Card(
                color: Colors.grey,
                child: Padding(
                  
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Expanded(
                    child: Column(
                      
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                    
                          Container( 
                                                     
                            child: Row(
                              children: [
                            
                                Text("No :- ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                SizedBox(width: 3,),
                                Text("${state.data[index].id}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                
                              ],
                            )
                          
                          ),
                          SizedBox(height: 5,),
                          Container(                          
                            child: Row(
                        
                              children: [
                                  Text("UserId :- ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: Colors.indigo),),
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
                          SizedBox(height: 5,),
                          Container(  
                        
                              child:  Text("${state.data[index].body}",style: TextStyle(color: Colors.white),),
                              
                          ),
                        ],
                    ),
                  ),
                  
                  
                  ),
              );

          }

            ),

    );
  
          } else if (state is PostErrorState) {
            return Text(state.message);
          }
              return SizedBox();
                
                },
              )
            ],
          ),

    );
    
  }
  // Widget PostList(List<Post>data)
  // {
    
  // }

}