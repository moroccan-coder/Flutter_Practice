import 'package:flutter/material.dart';
import 'package:flutter_first_app/SQlLiteDatabase/dbhelper.dart';
import 'package:flutter_first_app/SQlLiteDatabase/model/course.dart';

class NewCourse extends StatefulWidget {
  @override
  _NewCourseState createState() => _NewCourseState();
}

class _NewCourseState extends State<NewCourse> {
  int hours;
  String name, content, level;
  DbHelper helper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    helper = DbHelper();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Course"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: "Enter Course name"),
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                maxLines: 10,
                decoration: InputDecoration(hintText: "Enter Course Content"),
                onChanged: (value) {
                  setState(() {
                    content = value;
                  });
                },
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter Course Hours"),
                onChanged: (value) {
                  setState(() {
                    hours = int.parse(value);
                  });
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter Course Level"),
                onChanged: (value) {
                  setState(() {
                    level = value;
                  });
                },
              ),
              SizedBox(
                height: 16,
              ),
              RaisedButton(
                child: Text("Save"),
                onPressed: () {
                  setState(() async {
                    Course c = Course({
                      'name': name,
                      'content': content,
                      'hours': hours,
                      'level': level
                    });
                    int id = await helper.createCourse(c);
                    Navigator.of(context).pop();
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
