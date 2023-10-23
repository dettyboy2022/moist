import 'package:flutter/material.dart';

class FavouriteNotifier extends ChangeNotifier {
    final Set<int> _favoriteItems = {};

  Set<int> get favoriteItems => _favoriteItems;

  void toggleFavorite(int ikedItem) {
    if (_favoriteItems.contains(ikedItem)) {
      _favoriteItems.remove(ikedItem);
    } else {
      _favoriteItems.add(ikedItem);
    }
    notifyListeners();
  }
}
