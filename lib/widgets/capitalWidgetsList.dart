import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

TextStyle titleFont =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);
TextStyle infoFont =
    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0);

// SharedPreferences? sharedPreferences;

// void saveSearchData(String search) async {
//   sharedPreferences = await SharedPreferences.getInstance();
//   sharedPreferences?.setString("userId", search);
// }

TextEditingController searchController = TextEditingController();
var name3 = "";

// search(var name) {
//   name3 = name;
// }

Widget capitalCityView(String? name, String? temp) {
  return SafeArea(
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  print("hello");
                  name3;
                },
                icon: Icon(Icons.menu),
                alignment: Alignment.centerLeft,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_sharp),
                alignment: Alignment.centerRight,
                hoverColor: Colors.red,
              )
            ],
          ),
          SizedBox(height: 5.0),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(96, 239, 236, 240),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Center(
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                      onPressed: () {
                        name3 = searchController.text;
                        print("ok");
                        print("Search $name3");
                        print("Name: $name");
                        //search(searchController.text);
                        //saveSearchData(name3);
                      },
                      icon: Icon(Icons.arrow_forward)),
                  border: InputBorder.none,
                  hintText: "Search",
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Card(
            color: Color.fromARGB(255, 243, 176, 243),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Container(
              width: double.infinity,
              height: 180,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Mostly Sunny"),
                        Text(name!),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text("Now"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Text(
                            temp!,
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        Icon(
                          Icons.cloud,
                          size: 50,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
