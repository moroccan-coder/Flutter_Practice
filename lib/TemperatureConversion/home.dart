import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double inTemp = 0.0, outTemp = 0.0;
  bool isFah = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Temperature Converter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your temperature',
                labelText:
                    isFah ? "You entered $inTemp F" : "You entered $inTemp c",
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                try {
                  inTemp = double.parse(value);
                } catch (e) {}
              },
            ),
            RadioListTile(
              title: Text("Fahrenhaite"),
              value: true,
              groupValue: isFah,
              onChanged: (value) {
                setState(() {
                  isFah = value;
                });
              },
            ),
            RadioListTile(
              title: Text("Celsious"),
              value: false,
              groupValue: isFah,
              onChanged: (value) {
                setState(() {
                  isFah = value;
                });
              },
            ),
            RaisedButton(
              child: Text("Convert"),
              onPressed: () {
                setState(() {
                  outTemp =
                      isFah ? (inTemp - 32) / (5 / 6) : (inTemp * 9 / 5) + 32;
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Convert Result"),
                      content: isFah
                          ? Text("$inTemp Fah = $outTemp Celsius")
                          : Text("$inTemp Celsius = $outTemp Fah"),
                    ),
                  );
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
