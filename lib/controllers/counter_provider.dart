import 'package:flutter/material.dart';

class CounterNotifier extends ChangeNotifier {
  
  int counter = 1;
  int get count => counter;

  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }
}
