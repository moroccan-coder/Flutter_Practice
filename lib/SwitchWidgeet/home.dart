import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: val ? Colors.black54 : null,
      appBar: AppBar(
        title: Text("Switch Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dark Mode',
              style: TextStyle(
                color: val ? Colors.white : null,
                fontSize: 30
              ),
            ),
            Switch(
              value: val,
              onChanged: (newValue) {
                setState(() {
                  val = newValue;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
