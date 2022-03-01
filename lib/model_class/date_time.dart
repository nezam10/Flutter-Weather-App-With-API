import 'package:flutter/material.dart';

class DateTimeWidget extends StatefulWidget {
  const DateTimeWidget({Key? key}) : super(key: key);

  @override
  _DateTimeWidgetState createState() => _DateTimeWidgetState();
}

class _DateTimeWidgetState extends State<DateTimeWidget> {
  late TimeOfDay time;
  late TimeOfDay picker;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    time = TimeOfDay.now();
  }

  Future<Null> selectTime(BuildContext context) async {
    picker = (await showTimePicker(
      context: context,
      initialTime: time,
    ))!;
    if (picker != null) {
      setState(() {
        time = picker;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DateTime"),
        ),
        body: Center(
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  selectTime(context);
                  print(time);
                },
                icon: Icon(Icons.alarm),
              ),
              SizedBox(height: 50),
              Text('$time'),
            ],
          ),
        ));
  }
}
