import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_post/models/model.dart';

abstract class PostState extends Equatable {}

class PostInitialState extends PostState {
  @override
  List<Object> get props => [];
}
 
 class NoPostState extends PostState {
  @override
  List<Object> get props => [];
}

class PostLoadingState extends PostState {
  @override
  List<Object> get props => [];
}

class PostLoadedState extends PostState {

  List<Post> data;
  PostLoadedState({ this.data=const[]});
  @override
  List<Object> get props => [];
}

class PostErrorState extends PostState {
  final String message;

  PostErrorState({required this.message});
  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    return message;
  }
}