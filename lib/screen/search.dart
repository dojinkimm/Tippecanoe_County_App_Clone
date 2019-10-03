import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final context;
  Search({Key key, this.context}) : super(key:key);

  final _cityFieldController=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change City"),
        centerTitle: true,
      ),

      body: Stack(
        children: <Widget>[
          Center(
            child:  Image.asset("assets/white_snow.png", width: 490.0, height: 1200.0, fit: BoxFit.fill),
          ),

          ListView(
            children: <Widget>[
              ListTile(
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter city',
                  ),
                  controller: _cityFieldController,
                  keyboardType: TextInputType.text,
                ),
              ),

              ListTile(
                title: FlatButton(
                    onPressed: (){
                      Navigator.pop(context, {
                        "enter": _cityFieldController.text
                      });
                    },
                    textColor: Colors.white70,
                    color: Colors.red,
                    child: Text("Get Weather")),
              )
            ],
          ),
        ],
      ),
    );
  }
}


TextStyle cityStyle(){
  return TextStyle(
    color: Colors.white,
    fontSize: 30.0,
    fontWeight: FontWeight.w400,
  );
}

TextStyle tempStyle(){
  return TextStyle(
    color: Colors.white,
    fontSize: 50.0,
    fontWeight: FontWeight.w600,
  );
}