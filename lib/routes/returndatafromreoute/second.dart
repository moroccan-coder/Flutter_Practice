import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  static final ROUTE = '/second';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("yes"),
              onPressed: () {
                Navigator.of(context).pop('yes');
              },
            ),
            RaisedButton(
              child: Text("No"),
              onPressed: () {
                Navigator.of(context).pop('no');
              },
            )
          ],
        ),
      ),
    );
  }
}
