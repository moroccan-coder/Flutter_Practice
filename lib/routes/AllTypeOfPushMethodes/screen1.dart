import 'package:flutter/material.dart';
import 'package:flutter_first_app/main.dart';
import 'package:flutter_first_app/routes/AllTypeOfPushMethodes/screen2.dart';

class Screen1 extends StatelessWidget {
  static final ROUTE = '/screen1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
                child: Text("Open Screen 2"),
                onPressed: () {
                  // **** Default open Route without replace Current Route window*****
                  //------> Navigator.of(context).pushNamed(Screen2.ROUTE);
                  // ***** Replace open Route method1 ****
                  // Navigator.of(context).pushReplacementNamed(Screen2.ROUTE);
                  // ***** Replace open Route method2 ****
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Screen2()));
                }),
            RaisedButton(
              child: Text("Open Screen 3"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
