
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_post/bloc/event.dart';
import 'package:flutter_bloc_post/bloc/state.dart';
import 'package:flutter_bloc_post/models/model.dart';
import 'package:flutter_bloc_post/repo/repo.dart';


class PostBloc extends Bloc<PostEvents,PostState>{

  Repo  postrepo;

  PostBloc({required this.postrepo}):super(PostInitialState())
      {
      on<FetchPostEvent>(_onFetchPostEvent);
      }
      _onFetchPostEvent(
          FetchPostEvent event,Emitter<PostState>emit)async{
            try{
              List <Post>data = await postrepo.getData();
              if (data.isNotEmpty) {
              emit(PostLoadedState(data: data));
              }

            }on SocketException catch (error)
             {
                emit(PostLoadedState());
           } on Exception catch (e)
            {
             emit(PostErrorState(message: e.toString(),), );
            }
          }  
}