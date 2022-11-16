import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_5/bloc/bloc.dart';
import 'package:flutter_bloc_5/repo/uirepo.dart';
import 'package:flutter_bloc_5/ui/home.dart';

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
      debugShowCheckedModeBanner: false,
       home: BlocProvider(
        create:(context)=>AlbumBloc( albumrepo:RespoImpl()),
        child:Home()
       )
    );
  }
}
