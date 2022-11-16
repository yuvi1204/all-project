import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_second/bloc/event.dart';
import 'package:flutter_bloc_second/bloc/state.dart';
import 'package:flutter_bloc_second/models/albumsmodel.dart';
import 'package:flutter_bloc_second/repo/repo.dart';


class AlbumBloc extends Bloc<AlbumEvents, AlbumState> {
  Repo albumRepo;
  
  AlbumBloc({required this.albumRepo}) : super(AlbumInitialState()) {
    on<FetchAlbumEvent>(_onFetchAlbumEvent);
    
  }

  _onFetchAlbumEvent(
      FetchAlbumEvent event, Emitter<AlbumState> emit) async {
    try {
      List<Photo> data =
          await albumRepo.getData();
      if (data.isNotEmpty) {
        emit(AlbumLoadedState(data: data));
      }
    } on SocketException catch (error) {
      emit(AlbumLoadedState());
    } on Exception catch (e) {
      emit(
        AlbumErrorState(
          message: e.toString(),
        ),
      );
    }
  }
}  