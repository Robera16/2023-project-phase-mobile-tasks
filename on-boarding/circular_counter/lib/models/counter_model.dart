import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    if (_counter < 10) {
      _counter++;
    } else {
      _counter = 0;
    }
    notifyListeners();
  }

  void decrement() {
    if (_counter > 0) {
      _counter--;
    } else {
      _counter = 10;
    }
    notifyListeners();
  }
}
