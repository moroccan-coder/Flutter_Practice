import 'package:flutter/material.dart';
import 'package:flutter_first_app/StateManagement/ShopingCard/models/item.dart';

class Cart extends ChangeNotifier{
  List<Item> _item = [];
  double _totalPrice = 0.0;

  void add(Item item) {
    _item.add(item);
    _totalPrice += item.price;
    notifyListeners();
  }

  void remove(Item item) {
    _totalPrice -= item.price;
    _item.remove(item);
    notifyListeners();
  }

  int get count => _item.length;

  double get totalPrice => this._totalPrice;

  List<Item> get basketItems => _item;


}
