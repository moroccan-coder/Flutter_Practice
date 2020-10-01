import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page'),),
      body: Center(
        child: RaisedButton(
          child: Text('back'),
          onPressed: (){

          },
        ),
      ),
    );
  }
}
