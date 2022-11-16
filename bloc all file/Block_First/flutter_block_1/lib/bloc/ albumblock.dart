
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_block_1/bloc/albumevent.dart';
import 'package:flutter_block_1/bloc/albumstate.dart';
import 'package:flutter_block_1/models/model.dart';
import 'package:flutter_block_1/repo/albumrepo.dart';


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