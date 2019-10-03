import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../util/api_key.dart';
 

 Future<Map> getWeather(String city) async {
    String apiUrl = "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=imperial";

    http.Response response = await http.get(apiUrl);

    return jsonDecode(response.body);
}