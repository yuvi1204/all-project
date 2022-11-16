/*
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_album_block/bloc/event.dart';
import 'package:flutter_album_block/bloc/state.dart';
import 'package:flutter_album_block/models/model.dart';
import 'package:flutter_album_block/repo/repo.dart';


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
}*/