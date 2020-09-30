import 'package:flutter/material.dart';
import 'package:flutter_first_app/main.dart';
import 'package:flutter_first_app/routes/AllTypeOfPushMethodes/screen1.dart';
import 'package:flutter_first_app/routes/AllTypeOfPushMethodes/screen2.dart';
import 'package:flutter_first_app/routes/AllTypeOfPushMethodes/screen3.dart';
import 'package:flutter_first_app/routes/returndatafromreoute/home.dart';

class Home extends StatelessWidget {
  static final ROUTE = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Open Screen 1"),
              onPressed: () {
                //Navigator.pushNamed(context, Screen1.ROUTE);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Screen1(),
                ));
              },
            ),
            RaisedButton(
              child: Text("Back"),
              onPressed: () {
                // Navigator.pushNamed(context, Screen2.ROUTE);

                // **** NB : when we use Pop in the home Activty the app my be Crashed or have a bad UX
                // **** So to Prevent this we use mybePop() method *********
                // Navigator.of(context).maybePop();

                // **** Check if can be Pop ******
                /*if (Navigator.of(context).canPop()) {
                  Navigator.of(context).canPop();
                }
                else{
                  showDialog(
                    context: context,
                    builder: (cc)=>AlertDialog(
                      content: Text("Can\'t Pop"),
                    )
                  );
                }*/


              },
            ),
            RaisedButton(
                child: Text("Go Screen 3"),
                onPressed: () =>
                    Navigator.of(context).popAndPushNamed(Screen3.ROUTE),
            ),
          ],
        ),
      ),
    );
  }
}
