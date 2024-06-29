import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product.dart';

class ShoppingCartProvider extends ChangeNotifier {
  List<Product> cartItems = [];

  void addItem(Product product) {
    final index = cartItems.indexWhere((item) => item.id == product.id);
    if (index == -1) {
      cartItems.add(product);
    }
    notifyListeners();
  }

  increaseItem(int id) {
    cartItems.firstWhere((element) => element.id == id).quantity += 1;
    notifyListeners();
  }

  decreaseItem(int id) {
    final index = cartItems.indexWhere((item) => item.id == id);
    if (index >= 0) {
      if (cartItems[index].quantity > 1) {
        cartItems[index].quantity -= 1;
      } else {
        cartItems.removeWhere((item) => item.id == id);
      }
    }
    notifyListeners();
  }

  void removeItem(int id) {
    cartItems.removeWhere((item) => item.id == id);
    notifyListeners();
  }

  getSum() {
    int sum = 0;
    for (var item in cartItems) {
      sum += item.quantity * item.price;
    }
    return sum;
  }

  clearCart() {
    for (var element in cartItems) {
      element.quantity = 1;
    }
    cartItems.clear();
    notifyListeners();
  }
}
