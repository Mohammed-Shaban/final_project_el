import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {

  int selected =2;

  void setselected(int selected){
    this.selected =selected;
    notifyListeners();
  }
}
