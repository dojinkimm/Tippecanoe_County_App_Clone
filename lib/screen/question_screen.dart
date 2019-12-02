import 'package:flutter/material.dart';
import '../repository/question_custom.dart';

class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: DropdownButtonHideUnderline(
                      child: DropdownButton(
              isExpanded: true,
              hint: Text('Top 5 Freuently Asked Questions'), // Not necessary for Option 1
              onChanged: (newValue) {},
              items: quest.map((q) {
                return DropdownMenuItem(
                  child: InkWell(
                    child: new Text(q.question),
                    onTap: ()=>_launchModal(context, q.question, q.answer),
                  ),               
                  value: q.index,
                );
              }).toList(),
            ),
          ),
        );
  }

  Future<void> _launchModal(BuildContext context, String ques, String ans) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(
              ques,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ),
          ),
          content: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Container(
              child: Text(ans),
            )
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text(
                "Close",
                style: TextStyle(fontSize: 18.0),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}