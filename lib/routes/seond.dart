import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen'),),
      body: Center(
        child: Column(
          children: [
            Text("Second Route",style: Theme.of(context).textTheme.headline5,),
            RaisedButton(
              child: Text("Open Home"),
              onPressed: (){
                 Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}


