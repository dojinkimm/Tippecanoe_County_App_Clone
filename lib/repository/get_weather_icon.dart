import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<Widget> svgs = [
  SvgPicture.asset("assets/020-rain.svg", semanticsLabel: 'Rain'), //10d, 09d
  SvgPicture.asset("assets/024-cloudy.svg", semanticsLabel: 'Cloudy'), //02d, 02n, 03d, 03n, 04d, 04n
  SvgPicture.asset("assets/021-snowy.svg", semanticsLabel: 'Snowy'), // 13d
  SvgPicture.asset("assets/022-cloud.svg", semanticsLabel: 'Cloud'), // 50d 
  SvgPicture.asset("assets/023-sunny.svg", semanticsLabel: 'Sunny'), //01d
  SvgPicture.asset("assets/025-night.svg", semanticsLabel: 'Night'), //01n
  SvgPicture.asset("assets/0256-storm.svg", semanticsLabel: 'Storm'), //11d
];

Widget getWidget(String content){
  if (['10d','10n','09d','09n'].contains(content)){
    return svgs[0];
  }else if(['02d','02n','03d','03n','04d','04n'].contains(content)){
    return svgs[1];
  }else if(['13d','13n'].contains(content)){
    return svgs[2];
  }else if(['50d','50n'].contains(content)){
    return svgs[3];
  }else if(['01d'].contains(content)){
    return svgs[4];
  }else if(['01n'].contains(content)){
    return svgs[5];
  }else if(['11d','11n'].contains(content)){
    return svgs[6];
  } 
}