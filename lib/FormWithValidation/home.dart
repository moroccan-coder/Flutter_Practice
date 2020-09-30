import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>();
  final scafoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      appBar: AppBar(
        title: Text("Form Validation"),
      ),
      body: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Name Required!";
                  }
                  return null;
                },
              ),
              RaisedButton(
                child: Text("validate"),
                onPressed: () {
                  if (formKey.currentState.validate()) {
                    scafoldKey.currentState.showSnackBar(SnackBar(
                      content: Text("Validate"),
                    ));
                  }
                },
              )
            ],
          )),
    );
  }
}
