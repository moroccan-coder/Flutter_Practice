
import 'package:flutter/material.dart';
import 'package:flutter_first_app/StateManagement/LiftingUp/task.dart';
import 'package:flutter_first_app/StateManagement/LiftingUp/task_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Task> tasks = [
    Task("Wake up Early"),
    Task("Shower"),
    Task("BreakFast"),
    Task("Reading books"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Task (Lifit State'),
        ),
        body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return TaskCard(tasks[index],(){
              setState(() {
                tasks.remove(tasks[index]);
              });
            });
          },
        ),
      ),
    );
  }
}


