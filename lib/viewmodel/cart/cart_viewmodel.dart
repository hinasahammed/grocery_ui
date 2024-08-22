import 'package:flutter/material.dart';
import 'package:grocery_ui/model/grocery_model.dart';

class CartViewmodel extends ChangeNotifier {
  int _total = 0;
  int get total => _total;

  void addTotal(List<GroceryModel> list) {
    _total = 0;
    for (var i = 0; i < list.length; i++) {
      _total += int.parse(list[i].price);
    }
    notifyListeners();
  }
}
