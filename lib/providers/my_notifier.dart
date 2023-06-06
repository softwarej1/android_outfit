import 'package:flutter/material.dart';

class MyNotifier extends ChangeNotifier {
  List<String> contextualList = [];

  void saveContextualList(List<String> list) {
    contextualList = list;
    notifyListeners();
  }
}
