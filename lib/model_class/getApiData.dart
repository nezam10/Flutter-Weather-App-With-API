import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app_using_api/model_class/model.dart';

class GetWeatherApiData {
  // Future<List<dynamic>> getData() async {
  //   final mapUrl = Uri.parse(
  //       'api.openweathermap.org/data/2.5/weather?lat=24.234067446639564&lon=90.16551448876511&appid=324319fe02c3e5460bf528fb6f4c284a');
  //   final response = await http.get(mapUrl);
  //   print(response.body);
  //   return json.decode(response.body);
  // }

  Future<Weather> getWeather(String city) async {
    //api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
    final queryParameters = {
      'q': city,
      'appid': '324319fe02c3e5460bf528fb6f4c284a',
      'units': 'metric'
    };
    final uri =
        Uri.http('api.openweathermap.org', 'data/2.5/weather', queryParameters);
    final response = await http.get(uri);

    print(response.body);
    final json = jsonDecode(response.body);
    return Weather.fromJson(json);
  }

  // Future<Weatherdes> getWeatherdes(String city) async {
  //   //api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
  //   final queryParameters = {
  //     'q': city,
  //     'appid': '324319fe02c3e5460bf528fb6f4c284a',
  //     'units': 'metric'
  //   };
  //   final uri =
  //       Uri.http('api.openweathermap.org', 'data/2.5/weather', queryParameters);
  //   final response = await http.get(uri);

  //   print(response.body);
  //   final json = jsonDecode(response.body);
  //   return Weatherdes.fromJson(json);
  // }
}
