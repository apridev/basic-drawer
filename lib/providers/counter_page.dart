import 'package:flutter/material.dart';

class Counter with ChangeNotifier{
  int _counter = 0;

  int get counter => _counter;

  void add(){
    _counter += 1;
    notifyListeners();
  }

  void minus(){
    if(_counter != 0){
      _counter -= 1;
    } else {
      _counter = 0;
    }
    notifyListeners();
  }
}