import 'package:flutter/material.dart';
import 'package:flutter_first_app/routes/student.dart';

class Page1 extends StatelessWidget {
  static final route = '/page1';

  @override
  Widget build(BuildContext context) {
    Student student = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Name : ${student.name}"),
            Text("Age : ${student.age}"),
          ],
        ),
      ),
    );
  }
}
