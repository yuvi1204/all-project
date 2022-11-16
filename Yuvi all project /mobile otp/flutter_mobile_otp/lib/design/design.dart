import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mobile_otp/Bloc/phone_bloc.dart';
import 'package:flutter_mobile_otp/auth/auth.dart';
import 'package:flutter_mobile_otp/repo/phone_repo.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Phone Auth Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RepositoryProvider(
        create: (context) => PhoneAuthRepository(),
        child: BlocProvider(
          create: (context) => PhoneAuthBloc(
            phoneAuthRepository:
                RepositoryProvider.of<PhoneAuthRepository>(context),
          ),
          child: const PhoneAuthPage(),
        ),
      ),
    );
  }
}