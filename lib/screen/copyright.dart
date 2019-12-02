import 'package:flutter/material.dart';
import '../repository/copyright_custom.dart';

class CopyRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromRGBO(241,242,246,1)),
      body: ListView.builder(
        itemCount: copyR.length,
        itemBuilder: (BuildContext context, int index){
          var cdata = copyR[index];

          return _buildLine(cdata);
        },
      )
    );
  }

  Widget _buildLine(var cdata){
    return ListTile(
      title: Text("[${cdata.title}]", style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text("Icom made by ${cdata.author} from www.flaticon.com"),
    );
  }
}