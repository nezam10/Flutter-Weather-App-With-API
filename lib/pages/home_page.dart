import 'package:flutter/material.dart';
import 'package:weather_app_using_api/widgets/single_capitalListWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: SingleCapitalListWidget(context),
      ),
    );
  }
}
