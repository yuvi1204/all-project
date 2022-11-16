import 'package:flutter/material.dart';
import 'package:flutter_block_1/UI/home.dart';
import 'package:flutter_block_1/bloc/%20albumblock.dart';
import 'package:flutter_block_1/repo/albumrepo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_block_1/bloc/ albumblock.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: BlocProvider(

        create: (context) => AlbumBloc(albumrepo: RespoImpl()),
        
        child: MyHome(),
      ),
      
    );
  }
}

