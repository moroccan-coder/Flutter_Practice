import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("State Management"),),
      body: Center(
          child:myCounter(context),
      ),
    );
  }


  Widget myCounter(BuildContext context) {
    return StatefulBuilder(
      builder: (context, StateSetter setState) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.remove, size: 40, color: Colors.red,),
              onPressed: () {
                setState(() {
                  counter --;
                });
              },
            ),
            Text('$counter'),
            IconButton(
              icon: Icon(Icons.add, size: 40, color: Colors.blue,),
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
            )

          ],
        );

      },
    );
  }
}





