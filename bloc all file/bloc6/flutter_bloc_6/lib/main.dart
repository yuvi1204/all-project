import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_6/bloc/bloc.dart';
import 'package:flutter_bloc_6/repo/repo.dart';
import 'package:flutter_bloc_6/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     
      home:BlocProvider(
        create:(context)=>CommentBloc( commentrepo:RespoIml()),
        child:Home()
       )
    );
  }
}
