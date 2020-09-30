import 'package:flutter/material.dart';
import 'package:flutter_first_app/routes/returndatafromreoute/second.dart';

class Home extends StatelessWidget {
  static final ROUTE = '/';

  var myKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: myKey,
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Open Second"),
              onPressed: () async {
                var result = await Navigator.pushNamed(context, Second.ROUTE);
                myKey.currentState
                  ..removeCurrentSnackBar()
                  ..showSnackBar(SnackBar(
                    content: Text(result.toString()),
                  ));
              },
            )
          ],
        ),
      ),
    );
  }
}
