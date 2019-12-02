import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../blocs/information_bloc.dart';
import '../models/data.dart';


class GridList extends StatelessWidget {
  final infoBloc;
  GridList({Key key, this.infoBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: infoBloc.$outInformation,
      builder: (_, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return Container();
        } else {
          List<Data> data = snapshot.data;
          return Container(
              color: Colors.white,
              margin: const EdgeInsets.all(20.0),
              child: _gridList(data, context));
        }
      },
    );
  }

  Widget _gridList(List<Data> data, BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 0.0, crossAxisSpacing: 0.0),
        padding: const EdgeInsets.all(15.0),
        itemCount: data.length,
        itemBuilder: (_, int index) {
          Data d = data[index];
          return _buildCard(context, d);
        });
  }

  Widget _buildCard(BuildContext context, Data d) {
    return Container(
      alignment: Alignment.center,
        child: InkWell(
            onTap: () {
              if (d.status == BlockStatus.ADMIN) {
                infoBloc.eventSink.add(AdminClick());
              } else if (d.status == BlockStatus.CORRECTIONS) {
                infoBloc.eventSink.add(CorrectionsClick());
              } else if (d.status == BlockStatus.SERVICES) {
                infoBloc.eventSink.add(ServicesClick());
              } else if (d.status == BlockStatus.SNS) {
                infoBloc.eventSink.add(SocialMediaClick());
              } else if (d.status == BlockStatus.BACK) {
                infoBloc.eventSink.add(StartEvent());
              } else if (d.status == BlockStatus.URL_LAUNCHER) {
                _launchURL(d.url);
              } else if (d.status == BlockStatus.MODAL) {
                _launchModal(context, d);
              }
            },
            child: Column(
                children: <Widget>[
                  SizedBox(child: d.svg, height: MediaQuery.of(context).size.width*0.15),
                  SizedBox(
                    height: 5.0,
                  ),
                   Text(d.title, style: TextStyle(fontWeight: FontWeight.w500),)
                ],
              ),));
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchModal(BuildContext context, Data d) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(d.title),
          ),
          content: Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.5,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: d.dialog.length,
              itemBuilder: (BuildContext context, int index) {
                String key = d.dialog.keys.elementAt(index);
                return ListTile(
                  title: Text(
                    key,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onTap: () => _launchURL(d.dialog[key]),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
