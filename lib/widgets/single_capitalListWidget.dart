import 'package:flutter/material.dart';

SingleCapitalListWidget(BuildContext context) {
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Color.fromARGB(255, 243, 176, 243),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 180,
          child: Column(
            children: [],
          ),
        ),
      ),
    ),
  );
}
