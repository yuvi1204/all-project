import 'package:equatable/equatable.dart';

abstract class AlbumEvents extends Equatable {}

class FetchAlbumEvent extends AlbumEvents
{
  @override
  List<Object?> get props => [];
}
/*
class FetchNextAlbumEvent extends AlbumEvents
{
  @override
  List<Object?> get props => [];
}
*/