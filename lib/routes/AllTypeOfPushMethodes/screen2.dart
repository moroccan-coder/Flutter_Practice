import 'package:flutter/material.dart';
import 'package:flutter_first_app/main.dart';
import 'package:flutter_first_app/routes/AllTypeOfPushMethodes/screen3.dart';

class Screen2 extends StatelessWidget {
  static final ROUTE = '/screen2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Open Screen 3"),
              onPressed: () {
                Navigator.of(context).pushNamed(Screen3.ROUTE);
              },
            ),
            RaisedButton(
              child: Text("Back"),
              onPressed: () {
                Navigator.of(context).maybePop();
              },
            )
          ],
        ),
      ),
    );
  }
}
