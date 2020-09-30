import 'package:flutter/material.dart';
import 'package:flutter_first_app/routes/seond.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Home Screen",
              style: Theme.of(context).textTheme.headline5,
            ),
            RaisedButton(
              child: Text("Open Second"),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            )
          ],
        ),
      ),
    );
  }
}
