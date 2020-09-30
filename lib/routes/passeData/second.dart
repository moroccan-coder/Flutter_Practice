import 'package:flutter/material.dart';
import 'package:flutter_first_app/routes/passeData/product.dart';

class Second extends StatelessWidget {
  static final String ROUTE = '/second';
  Product product;

  Second(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "${product.name}",
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 40,
            ),
            Text("Price ${product.price}"),
          ],
        ),
      ),
    );
  }
}
