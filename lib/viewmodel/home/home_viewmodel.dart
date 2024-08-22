import 'package:flutter/material.dart';
import 'package:grocery_ui/model/grocery_model.dart';
import 'package:grocery_ui/viewmodel/cart/cart_viewmodel.dart';
import 'package:provider/provider.dart';

class HomeViewmodel extends ChangeNotifier {
  final List<GroceryModel> _cartGrocery = [];

  List<GroceryModel> get cartGrocery => _cartGrocery;

  void addToCart(GroceryModel groceryItem, BuildContext context) {
    final cartProvider = Provider.of<CartViewmodel>(context, listen: false);

    _cartGrocery.add(groceryItem);
    cartProvider.addTotal(_cartGrocery);

    notifyListeners();
  }

  void removeFromCart(GroceryModel groceryItem, BuildContext context) {
    final cartProvider = Provider.of<CartViewmodel>(context, listen: false);
    _cartGrocery.remove(groceryItem);
    cartProvider.addTotal(_cartGrocery);

    notifyListeners();
  }
}
