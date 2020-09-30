import 'package:flutter/material.dart';
import 'package:flutter_first_app/routes/pages/page1.dart';
import 'package:flutter_first_app/routes/pages/page2.dart';
import 'package:flutter_first_app/routes/student.dart';

class Home extends StatelessWidget {
  static final route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Go to Page 1"),
              onPressed: () {
                Navigator.pushNamed(context, Page1.route,
                    arguments: Student(name: "yassine", age: 30));
              },
            ),
            RaisedButton(
              child: Text("Go to Page 2"),
              onPressed: () {
                Navigator.pushNamed(context, Page2.route,
                    arguments: Student(name: "Aziz", age: 25));
              },
            )
          ],
        ),
      ),
    );
  }
}
