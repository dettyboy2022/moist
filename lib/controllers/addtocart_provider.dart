import 'package:flutter/material.dart';
import '../presentation/models/recommended_model.dart';

class CartNotifier extends ChangeNotifier {

  final List<Items> _items = [];
  List<Items> get items => _items;
  final double _deliveryFee = 2000;


// total price of items in cart
  double get totalPrice {
    return _items.fold(0, (total, item) => total + item.slashed);
  }

// total price + delivery
  double get totalDelivery {
    return totalPrice + _deliveryFee;
  }

// add to cart
  void add(Items item) {
    _items.add(item);
    notifyListeners();
  }

// remove from cart
  void removeFromCart(Items item) {
    _items.remove(item);
    notifyListeners();
  }
}
