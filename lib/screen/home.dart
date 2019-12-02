import 'package:flutter/material.dart';
import 'grid_list.dart';

import '../blocs/bloc_provider.dart';
import '../blocs/information_bloc.dart';
import '../repository/get_weather.dart';
import '../util/api_key.dart' as util;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _cityEntered;

  @override
  Widget build(BuildContext context) {
    final InformationBloc infoBloc = BlocProvider.of<InformationBloc>(context);
    infoBloc.eventSink.add(StartEvent());

    return Scaffold(
        appBar: AppBar(
          title: Container(
            child: Center(
              child: updateTempWidget(_cityEntered),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView(
          children: <Widget>[
            image(),
            Container(child: GridList(infoBloc: infoBloc))
          ],
        ));
  }

  Widget image() {
    return Container(
      padding: const EdgeInsets.all(50.0),
      child: Image.asset('assets/sheriff.png'),
    );
  }

  Widget updateTempWidget(String city) {
    return new FutureBuilder(
        future: getWeather(city == null ? util.defaultCity : city),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
          //where we get all json data, we setup widgets and etc
          if (snapshot.hasData) {
            Map content = snapshot.data;
            return new Text(
                util.defaultCity +
                    "  " +
                    content['main']['temp'].toString() +
                    " F",
                style: TextStyle(color: Colors.black));
          } else {
            return new Container();
          }
        });
  }
}
