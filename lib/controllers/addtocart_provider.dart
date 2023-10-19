import 'package:flutter/material.dart';

import '../presentation/models/recommended_model.dart';

class CartNotifier extends ChangeNotifier {
  final List<Items> _items = [];

  List<Items> get items => _items;

  void add(Items item) {
    _items.add(item);
    notifyListeners();
  }

//   void removeFromCart(Items item) {
//   int index = _items.indexOf(item);
//   if (index != -1) {
//     _items.removeAt(index);
//     notifyListeners();
//   }
// }

  void removeFromCart(Items item) {
    // _items.remove(item);
    _items.removeAt;
    notifyListeners();
  }
}
