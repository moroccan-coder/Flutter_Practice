import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;

  Future<String> getLocalPath() async {
    var folder = await getApplicationDocumentsDirectory();
    return folder.path;
  }

  Future<File> getLocalFile() async {
    String path = await getLocalPath();
    return File('$path/counter.txt');
  }

  Future<File> writeCounter(int c) async {
    File file = await getLocalFile();
    return file.writeAsString('$c');
  }

  Future<int> readCounter() async {
    try {
      File file = await getLocalFile();
      String content = await file.readAsString();
      return int.parse(content);
    } catch (e) {
      return 0;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readCounter().then((value) {
      setState(() {
        counter = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read/Write File'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });

          writeCounter(counter);
        },
      ),
      body: Center(
        child: Text('Counter $counter'),
      ),
    );
  }
}
