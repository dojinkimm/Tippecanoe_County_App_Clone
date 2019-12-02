import 'package:flutter/material.dart';
import './screen/home.dart';
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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey
      ),
      home: Home(),
    );
  }
}