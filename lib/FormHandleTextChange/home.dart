import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var myFocus;
  String text = '';
  final myController = new TextEditingController();

  @override
  initState() {
    super.initState();
    myController.addListener(getLatestText);
  }

  getLatestText() {
    setState(() {
      text = myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form handle Text Changes"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              Text(
                "You typed\n $text",
                style: Theme.of(context).textTheme.headline5,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                ),

                //---> Method 1
                /*onChanged: (value) {
                  setState(() {
                    text = value;
                  });
                }*/

                // ----> Method 2
                controller: myController,
              )
            ],
          ),
        ),
      ),
    );
  }
}
