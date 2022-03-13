import 'package:flutter/material.dart';
import 'package:weather_app_using_api/model_class/getApiData.dart';
import 'package:weather_app_using_api/model_class/model.dart';
import 'package:weather_app_using_api/widgets/capitalWidgetsList.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final response = GetWeatherApiData().getWeather('bangladesh');

  // final _getweatherapidata = GetWeatherApiData();

  Weather _response = Weather();
  GetWeatherApiData weatherdata = GetWeatherApiData();
  var name = "Feni";

  Weather? data;
  Future<void> getData() async {
    data = await weatherdata.getWeather("$name");
  }

  // Weatherdes _response2 = Weatherdes();
  // GetWeatherApiData weatherdatades = GetWeatherApiData();

  // Weatherdes? datades;
  // Future<void> getDatades() async {
  //   datades = await weatherdatades.getWeatherdes("Dhaka");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0XffF8D7DF),
                  Color.fromARGB(255, 236, 148, 225),
                  Color(0XffF8D7DF),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: capitalCityView("${data?.cityName}", "${data?.temp}°"),
          );
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Container();
      },
    ));
  }

  // void _search() async {
  //   final response = await _getweatherapidata.getWeather('bangladesh');
  //   print(response);
  // }
}
