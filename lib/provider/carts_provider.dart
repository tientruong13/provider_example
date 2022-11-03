import 'package:flutter/material.dart';
import 'package:provider_2/screens/screen_page.dart';

class ShoppingCarts with ChangeNotifier {
  List<String> _ShoppingCarts = ['Shirt', 'Shoes', 'Pants'];

  int get count => _ShoppingCarts.length;
  List<String> get cart => _ShoppingCarts;

  void addItem(String item){
    _ShoppingCarts.add(item);
    notifyListeners();
  }


}