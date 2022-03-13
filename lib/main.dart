import 'package:flutter/material.dart';
import 'package:weather_app_using_api/model_class/date_time.dart';
import 'package:weather_app_using_api/pages/home_page.dart';
import 'package:weather_app_using_api/pages/view_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
