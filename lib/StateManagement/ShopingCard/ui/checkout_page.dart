import 'package:flutter/material.dart';
import 'package:flutter_first_app/StateManagement/ShopingCard/models/cart.dart';
import 'package:provider/provider.dart';

class CheckOutPage extends StatefulWidget {
  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Scaffold(
          appBar: AppBar(title: Text('Checkout page'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.monetization_on,
                    size: 20,
                  ),
                  Text(cart.totalPrice.toString()),
                ],
              ),
            )
          ],
          ),
          body: Padding(
            padding: EdgeInsets.only(left: 12,right: 12),
            child: cart.basketItems.length == 0 ? Text(
                "Your Shoping cart is empty!") : ListView.builder(
              itemCount: cart.basketItems.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  margin: EdgeInsets.only(bottom: 8),
                  child: ListTile(
                    title: Text(cart.basketItems[index].title,style: TextStyle(fontWeight: FontWeight.bold),),
                    trailing: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        cart.remove(cart.basketItems[index]);
                      },
                    ),
                    subtitle: Text(cart.basketItems[index].price.toString()),
                  ),
                );
              },),
          ),
        );
      },
    );
  }
}

