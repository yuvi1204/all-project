import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_5/bloc/event.dart';
import 'package:flutter_bloc_5/bloc/state.dart';
import 'package:flutter_bloc_5/model/model.dart';
import 'package:flutter_bloc_5/repo/uirepo.dart';


class AlbumBloc extends Bloc<AlbumEvents,AlbumState>{

  Repo  albumrepo;

  AlbumBloc({required this.albumrepo}):super(AlbumInitialState())
      {
      on<FetchAlbumEvent>(_onFetchAlbumEvent);
      }
      _onFetchAlbumEvent(
          FetchAlbumEvent event,Emitter<AlbumState>emit)async{
            try{
              List <Album>data = await albumrepo.getData();
              if (data.isNotEmpty) {
              emit(AlbumLoadedState(data: data));
              }

            }on SocketException catch (error)
             {
                emit(AlbumLoadedState());
           } on Exception catch (e)
            {
             emit(AlbumErrorState(message: e.toString(),), );
            }
          }  
}