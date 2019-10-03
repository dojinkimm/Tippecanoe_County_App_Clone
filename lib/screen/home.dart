import 'package:flutter/material.dart';
import 'grid_list.dart';

import '../blocs/bloc_provider.dart';
import '../blocs/information_bloc.dart';
import 'search.dart';
import '../repository/get_weather.dart';
import '../util/api_key.dart' as util;


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _cityEntered;

  Future _goToNextScreen(BuildContext context) async{
    Map results=await Navigator.of(context).push(
    MaterialPageRoute<Map>(builder: (BuildContext context){
      return new Search(context: context);
      }),
    );

    if(results!=null && results.containsKey(("enter"))){
      _cityEntered=results['enter'];
    //      print(results['enter'].toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final InformationBloc infoBloc = BlocProvider.of<InformationBloc>(context);
    infoBloc.eventSink.add(StartEvent());
    
    return Scaffold(
      appBar: AppBar(
          title: Text("TIPS"),
          backgroundColor: Color.fromRGBO(78, 68, 52, 1),
          elevation: 0,
          actions: <Widget>[ //Navigator.push(context, MaterialPageRoute(builder: (context)=>Search(context: context)))
          IconButton(icon: new Icon(Icons.menu), onPressed: ()=>_goToNextScreen(context))
        ],
        ),
      body: ListView(
          children: <Widget>[
            Container(
            child: updateTempWidget(_cityEntered),),
            image(),
            Container(child: GridList(infoBloc: infoBloc))
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

    Widget updateTempWidget(String city){
      return new FutureBuilder(
        future: getWeather(city == null ? util.defaultCity: city),
          builder: (BuildContext context, AsyncSnapshot<Map> snapshot){
          //where we get all json data, we setup widgets and etc
            if(snapshot.hasData){
              Map content=snapshot.data;
              return new Container(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new ListTile(
                      title: new Text(content['main']['temp'].toString()+" F", style: tempStyle(),),
                      subtitle: ListTile(
                        title: Text(
                            "Humidity: ${content['main']['humidity'].toString()} %\n"
                                "Min: ${content['main']['temp_min'].toString()} F\n"
                                "Max: ${content['main']['temp_max'].toString()} F\n"
                              , style: TextStyle(color: Colors.white70, fontSize: 18.5, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),),
                      ),
                    )
                  ],
                ),
              );
            }else{
              return new Container();
            }
    });
  }
}