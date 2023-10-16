import 'package:flutter/material.dart';

import '../presentation/models/recommended_model.dart';

class CartNotifier extends ChangeNotifier {
  final List<Items> _items = [];

  List<Items> get items => _items;

  void add(Items product) {
    _items.add(product);
    notifyListeners();
  }

  void removeFromCart(Items product) {
    _items.remove(product);
    notifyListeners();
  }
}
