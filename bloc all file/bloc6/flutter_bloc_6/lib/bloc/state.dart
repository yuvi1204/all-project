import 'package:flutter_bloc_6/model/apimodel.dart';
import 'package:equatable/equatable.dart';

abstract class CommentState extends Equatable{}
class CommentInitialState extends CommentState{
  @override
  List<Object> get props=>[];

}
class NoCommentState extends CommentState{
  @override
  List<Object> get props=>[];

}
class CommentLoadingState extends CommentState{
  @override
  List<Object> get props=>[];

}
class CommentLoadedState extends CommentState{
  List<Comment> data;
  CommentLoadedState({ this.data=const[]});
  @override
  List<Object> get props=>[];

}
class CommentErrorState extends CommentState {
  final String message;

  CommentErrorState({required this.message});
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    return message;
  }
}