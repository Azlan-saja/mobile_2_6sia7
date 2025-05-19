import 'package:flutter/material.dart';

class CounterPriver extends ChangeNotifier {
  int _valueCounter = 0;

  String get hasil => _valueCounter.toString();

  kurangi() {
    _valueCounter--;
    notifyListeners();
  }

  tambahin() {
    _valueCounter++;
    notifyListeners();
  }
}
