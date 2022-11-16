import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_5/model/model.dart';



abstract class AlbumState extends Equatable {}

class AlbumInitialState extends AlbumState {
  @override
  List<Object> get props => [];
}
 
 class NoAlbumState extends AlbumState {
  @override
  List<Object> get props => [];
}

class AlbumLoadingState extends AlbumState {
  @override
  List<Object> get props => [];
}

class AlbumLoadedState extends AlbumState {

  List<Album> data;
  AlbumLoadedState({ this.data=const[]});
  @override
  List<Object> get props => [];
}

class AlbumErrorState extends AlbumState {
  final String message;

  AlbumErrorState({required this.message});
  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    return message;
  }
}