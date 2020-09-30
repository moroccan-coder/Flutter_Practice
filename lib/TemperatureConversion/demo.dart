import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Demo> {
  double fahTemp = 0.0, celTemp = 0.0;
  bool isFah = true;

  var temperatures = ['Celsuis', 'Fahrenhit', 'kalvin'];
  var selectedTemp1 = 'Celsuis';
  var selectedTemp2 = 'Fahrenhit';
  var sifixVal1 = 'C';
  var sifixVal2 = 'F';

  var fahController = TextEditingController();
  var celController = TextEditingController();

  @override
  initState() {
    super.initState();
    fahController.addListener(fahListener);
    celController.addListener(celListeneer);
  }

  fahListener() {
    fahTemp = double.parse(fahController.text);
    celTemp = converter(fahTemp, true);
    if (isFah) celController.text = celTemp.toString();
    isFah = true;
  }

  celListeneer() {
    celTemp = double.parse(celController.text);
    fahTemp = converter(celTemp, false);

    if (!isFah) fahController.text = fahTemp.toString();
    isFah = false;
  }

  double converter(double temp, bool isF) {
    return isF ? (temp - 32) * (5 / 9) : (temp * 9 / 5) + 32;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Temperature Converter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  DropdownButton(
                    items: temperatures.map((item) {
                      return DropdownMenuItem(
                        child: Text(item),
                        value: item,
                      );
                    }).toList(),
                    value: selectedTemp1,
                    onChanged: (newValue) {
                      setState(() {
                        selectedTemp1 = newValue;
                        switch (newValue) {
                          case 'Celsuis':
                            sifixVal1 = 'C';
                            break;
                          case 'Fahrenhit':
                            sifixVal1 = 'F';
                            break;
                          case 'kalvin':
                            sifixVal1 = 'K';
                            break;
                        }
                      });
                    },
                  ),
                  TextField(
                    controller: celController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      suffixText: sifixVal1,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Expanded(
              child: Column(
                children: [
                  DropdownButton(
                    items: temperatures.map((item) {
                      return DropdownMenuItem(
                        child: Text(item),
                        value: item,
                      );
                    }).toList(),
                    value: selectedTemp2,
                    onChanged: (newValue) {
                      setState(() {
                        selectedTemp2 = newValue;
                        switch (newValue) {
                          case 'Celsuis':
                            sifixVal2 = 'C';
                            break;
                          case 'Fahrenhit':
                            sifixVal2 = 'F';
                            break;
                          case 'kalvin':
                            sifixVal2 = 'K';
                            break;
                        }
                      });
                    },
                  ),
                  TextField(
                    controller: fahController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      suffixText: sifixVal2,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
