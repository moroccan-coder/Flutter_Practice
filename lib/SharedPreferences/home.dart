import 'package:flutter/material.dart';
import 'package:flutter_first_app/SharedPreferences/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int favColor = Colors.white.value;
  SharedPreferences pref;

  getData() async {
    pref = await SharedPreferences.getInstance();
    setState(() {
      favColor = pref.getInt("favColor") ?? Colors.white.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      backgroundColor: Color(favColor),
      appBar: AppBar(
        title: Text("SharedPreferences"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Settings();
              }));
            },
          )
        ],
      ),
    );
  }
}
