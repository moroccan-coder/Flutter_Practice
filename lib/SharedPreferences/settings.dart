import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int favColor = Colors.white.value;
  SharedPreferences pref;

  saveData(int color) async {
    pref = await SharedPreferences.getInstance();
    pref.setInt("favColor", color);
  }

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
        title: Text("Settings"),
      ),
      body: Center(
        child: Column(
          children: [
            RadioListTile(
              title: Text("Green"),
              value: Colors.green.value,
              groupValue: favColor,
              onChanged: (int color) {
                setState(() {
                  favColor = color;
                });

                saveData(color);
              },
            ),
            RadioListTile(
              title: Text("Orange"),
              value: Colors.orange.value,
              groupValue: favColor,
              onChanged: (int color) {
                setState(() {
                  favColor = color;
                });
                saveData(color);
              },
            ),
            RadioListTile(
              title: Text("Blue"),
              value: Colors.blue.value,
              groupValue: favColor,
              onChanged: (int color) {
                setState(() {
                  favColor = color;
                });
                saveData(color);
              },
            )
          ],
        ),
      ),
    );
  }
}
