import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text("Home Page"),
  ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Login'),
              onPressed: (){

              },

            ),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text('Register'),
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}
