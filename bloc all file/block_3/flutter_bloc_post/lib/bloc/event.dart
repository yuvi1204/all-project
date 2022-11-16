import 'package:equatable/equatable.dart';

abstract class PostEvents extends Equatable {}

class FetchPostEvent extends PostEvents
{
  @override
  List<Object?> get props => [];
}