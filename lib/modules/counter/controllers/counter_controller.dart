import 'package:flutter/material.dart';

class CounterController extends ChangeNotifier {
  int counter = 0;

  updateState() {
    notifyListeners();
  }

  incrementCounter() {
    counter++;
    updateState();
  }

  functionCall(){
    print("Something....");
  }
}
