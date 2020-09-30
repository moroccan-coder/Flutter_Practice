import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int val;
  Color val;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: val,
      appBar: AppBar(
        title: Text("Radio & RadioListTile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Green"),
            Radio(
              value: Colors.teal,
              groupValue: val,
              onChanged: (newValue) {
                setState(() {
                  val = newValue;
                });
              },
            ),
            Text("Red"),
            Radio(
              value: Colors.redAccent,
              groupValue: val,
              onChanged: (newValue) {
                setState(() {
                  val = newValue;
                });
              },
            ),
            RadioListTile(
              title: Text("Blue"),
              value: Colors.blueAccent,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = value;
                });
              },


            ),
            RadioListTile(
              title: Text("Black"),
              value: Colors.black,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = value;
                });
              },


            ),
          ],
        ),
      ),
    );
  }
}
