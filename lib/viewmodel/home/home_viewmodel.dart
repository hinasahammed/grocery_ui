import 'package:flutter/material.dart';
import 'package:grocery_ui/model/grocery_model.dart';

class HomeViewmodel extends ChangeNotifier {
  final List<GroceryModel> _cartGrocery = [];

  List<GroceryModel> get cartGrocery => _cartGrocery;

  void addToCart(GroceryModel groceryItem) {
    _cartGrocery.add(groceryItem);
    notifyListeners();
  }

  void removeFromCart(GroceryModel groceryItem) {
    _cartGrocery.remove(groceryItem);
    notifyListeners();
  }
}
