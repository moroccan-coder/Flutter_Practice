import 'package:flutter/material.dart';
import 'package:flutter_first_app/StateManagement/ShopingCard/models/cart.dart';
import 'package:flutter_first_app/StateManagement/ShopingCard/models/item.dart';
import 'package:flutter_first_app/StateManagement/ShopingCard/ui/checkout_page.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Item> items = [
    Item(title: "IPhone 20 Pro Max", price: 2000.0),
    Item(title: "MacBook Pro 2021", price: 3000.0),
    Item(title: "Electric Desk", price: 1000.0),
    Item(title: "42° Screen Monitor", price: 700.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckOutPage()));
                    },
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black26,
                    maxRadius: 13,
                    child: Text(cart.count.toString()),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              )
            ],
            title: Text("Shopping Card"),
            centerTitle: true,
          ),
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  items[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    cart.add(items[index]);
                  },
                ),
                subtitle: Text(items[index].price.toString()),
              );
            },
          ),
        );
      },
    );
  }
}
