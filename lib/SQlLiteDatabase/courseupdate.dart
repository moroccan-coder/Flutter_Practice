import 'package:flutter/material.dart';
import 'package:flutter_first_app/SQlLiteDatabase/dbhelper.dart';
import 'package:flutter_first_app/SQlLiteDatabase/model/course.dart';

class CourseUpdate extends StatefulWidget {
  Course course;

  CourseUpdate(this.course);

  @override
  _CourseUpdateState createState() => _CourseUpdateState();
}

class _CourseUpdateState extends State<CourseUpdate> {
  TextEditingController editName = TextEditingController();
  TextEditingController editContent = TextEditingController();
  TextEditingController editHours = TextEditingController();
  TextEditingController editLevel = TextEditingController();
  DbHelper helper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    helper = DbHelper();
    editName.text = widget.course.name;
    editContent.text = widget.course.content;
    editHours.text = widget.course.hours.toString();
    editLevel.text = widget.course.level.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Update'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(controller: editName),
            TextFormField(controller: editContent),
            TextFormField(controller: editHours),
            TextFormField(controller: editLevel),
            RaisedButton(
              child: Text("Save"),
              onPressed: () {
              setState(() {
                var updateCourse = Course({
                  'id': widget.course.id,
                  'name': editName.text,
                  'content': editContent.text,
                  'hours': int.parse(editHours.text),
                  'level': editLevel.text,
                });

                helper.courseUpdate(updateCourse);
                Navigator.of(context).pop();
              });
              },
            )
          ],
        ),
      ),
    );
  }
}
