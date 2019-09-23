import 'package:flutter/material.dart';
import 'grid_list.dart';

import '../blocs/bloc_provider.dart';
import '../blocs/information_bloc.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final InformationBloc infoBloc = BlocProvider.of<InformationBloc>(context);
    infoBloc.eventSink.add(StartEvent());
    
    return Scaffold(
      appBar: AppBar(
          title: Text("TIPS"),
          elevation: 0,
        ),
      body: Column(
          children: <Widget>[
            image(),
            Expanded(child: GridList(infoBloc: infoBloc))
          ],
        )
    );
  }

  Widget image(){
    return Container(
          padding: const EdgeInsets.all(50.0),
          child: Image.asset('assets/sheriff.png'),
        );
  }
}