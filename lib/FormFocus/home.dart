import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var myFocus;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    myFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Focus"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'First name',
                ),
              ),
              TextFormField(
                focusNode: myFocus,
                decoration: InputDecoration(
                  hintText: 'Last name',
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Next'),
        onPressed: () => myFocus.requestFocus(),
      ),
    );
  }
}
