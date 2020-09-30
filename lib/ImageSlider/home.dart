import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> imgList = [
    'assets/images/dog.jpg',
    'assets/images/dog2.jpg',
    'assets/images/dog3.jpg',
    'assets/images/dog4.jpg',
  ];
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Images Slider"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  child: Image(
                    image: AssetImage(imgList[indice]),
                    fit: BoxFit.fill,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {

                        if (indice >=1) {
                          setState(() {
                            indice --;
                          });

                        }

                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {

                        if (indice <=2) {
                          setState(() {
                            indice ++;
                          });

                        }
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}