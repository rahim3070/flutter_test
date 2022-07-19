import 'package:flutter/material.dart';

class dataProvider extends ChangeNotifier {
  int value = 0;

  providerIncrement() {
    value++;
    notifyListeners();
  }
}
