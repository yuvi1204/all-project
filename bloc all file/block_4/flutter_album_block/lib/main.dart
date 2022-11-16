import 'package:flutter/material.dart';
import 'package:flutter_album_block/bloc/bloc.dart';
import 'package:flutter_album_block/repo/repo.dart';
import 'package:flutter_album_block/ui/home.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
      
    /*  home: BlocProvider(

        create: (context) => AlbumBloc(albumrepo: RespoImpl()),
        
        child: MyHome(),
      ),*/
    );
  }
}
