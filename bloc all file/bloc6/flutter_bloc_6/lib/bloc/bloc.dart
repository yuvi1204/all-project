import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_6/bloc/event.dart';
import 'package:flutter_bloc_6/bloc/state.dart';
import 'package:flutter_bloc_6/model/apimodel.dart';
import 'package:flutter_bloc_6/repo/repo.dart';

class CommentBloc extends Bloc<CommentEvents,CommentState>{

  Repo  commentrepo;

   CommentBloc({required this.commentrepo}):super(CommentInitialState())
   {
          on<FetchCommentEvent>(_onFetchCommentEvent);
   }
     _onFetchCommentEvent(FetchCommentEvent event,Emitter<CommentState>emit)async{
      try{
          List <Comment>data = await commentrepo.getData();
           if (data.isNotEmpty) {
              emit(CommentLoadedState(data: data));
              }
      }on SocketException catch (error)
             {
                emit(CommentLoadedState());
           }on Exception catch (e)
            {
             emit(CommentErrorState(message: e.toString(),), );
            }
     }  
}