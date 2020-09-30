import 'package:flutter/material.dart';
import 'package:flutter_first_app/main.dart';
import 'package:flutter_first_app/routes/AllTypeOfPushMethodes/home.dart';
import 'package:flutter_first_app/routes/AllTypeOfPushMethodes/screen2.dart';

class Screen3 extends StatelessWidget {
  static final ROUTE = '/screen3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 3"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Screen 2 & home"),
              onPressed: () {
                //Remove all route expect screen2 & Home
                Navigator.of(context).pushNamedAndRemoveUntil(
                    Screen2.ROUTE, ModalRoute.withName(Home.ROUTE));
              },
            ),
            RaisedButton(
              child: Text("Go Home & popuntil"),
              onPressed: () {
                // ******* Remove all Previous routes and open Home ***
                // Method 1
                /*Navigator.of(context)
                    .pushNamedAndRemoveUntil(Home.ROUTE, (route) => false);*/

                // Method 2
                // **** Popuntil ***
                Navigator.of(context).popUntil(ModalRoute.withName(Home.ROUTE));
              },
            )
          ],
        ),
      ),
    );
  }
}
