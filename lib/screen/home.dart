import 'package:flutter/material.dart';

import 'grid_list.dart';
import 'copyright.dart';
import 'question_screen.dart';
import '../blocs/bloc_provider.dart';
import '../blocs/information_bloc.dart';
import '../repository/get_weather.dart';
import '../repository/get_weather_icon.dart';
import '../util/api_key.dart' as util;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _cityEntered;

  @override
  void initState() {
    super.initState();
    _cityEntered=null;
  }

  @override
  Widget build(BuildContext context) {
    final InformationBloc infoBloc = BlocProvider.of<InformationBloc>(context);
    infoBloc.eventSink.add(StartEvent());

    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Center(
            child: _updateTempWidget(_cityEntered, context),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          _image(),
          QuestionScreen(),
          Container(child: GridList(infoBloc: infoBloc)),
          _footer(context),
        ],
      ),
    );
  }

  Widget _updateTempWidget(String city, var context) {
    return new FutureBuilder(
        future: getWeather(city == null ? util.defaultCity : city),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
          if (snapshot.hasData) {
            Map content = snapshot.data;
            Widget svg = getWidget(content['weather'][0]['icon']);

            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(flex:1, child: SizedBox(height: MediaQuery.of(context).size.height*0.05, child: svg,)),
                Flexible(flex:2,
                    child: Text(
                      util.defaultCity +
                          "  " +
                          content['main']['temp'].toStringAsFixed(0) +
                          " °F",
                      style: TextStyle(color: Colors.black)),
                )
              ],
            );
          } else {
            return new Container();
          }
        });
  }

  Widget _image() {
    return Container(
      child: Image.asset('assets/sheriff.png'),
    );
  }

  Widget _footer(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            child: Text("CopyRight"),
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CopyRight())),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              height: MediaQuery.of(context).size.height * 0.02,
              color: Colors.black54,
              width: 2.0),
          InkWell(child: Text("Contact Us"))
        ],
      ),
    );
  }

}
