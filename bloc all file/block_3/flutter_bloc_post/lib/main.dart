import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_post/bloc/bloc.dart';
import 'package:flutter_bloc_post/repo/repo.dart';
import 'package:flutter_bloc_post/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
       home: BlocProvider(
        create:(context)=>PostBloc(postrepo:RespoImpl()),
        child:Home()
       )
    );
  }
}
