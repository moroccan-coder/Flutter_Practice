import 'package:flutter/material.dart';
import 'page2.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Routing'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("page2"),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Page2()));
          },
        ),
      ),
    );
  }
}
