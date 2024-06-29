import 'package:flutter/material.dart';

class BottomNavbarProvider extends ChangeNotifier {
  int selectedIndex = 0;

  void setPageIndex(int index) {
    if (index == 2) index = 0;
    selectedIndex = index;
    notifyListeners();
  }
}
