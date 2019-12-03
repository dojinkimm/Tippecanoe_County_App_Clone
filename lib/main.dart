import 'package:flutter/material.dart';
import './screen/splashscreen.dart';
import 'blocs/bloc_provider.dart';
import 'blocs/information_bloc.dart';

void main() => runApp(
  BlocProvider<InformationBloc>(
    bloc: InformationBloc(),
    child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sheriff App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(241,242,246,1)
      ),
      home: Splash(),
    );
  }
}