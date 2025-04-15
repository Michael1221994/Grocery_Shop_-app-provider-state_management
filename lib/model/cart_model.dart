import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items on sale
  final List _shopItems =  [
    // [itemName, itemPrice, imagePath, color]
    ["Avocado", "2.5", "lib/images/avocado.png", Colors.green],
    ["Banana", "1.5", "lib/images/Banana.png", Colors.yellow],
    ["Broccoli", "2.0", "lib/images/Broccoli.png", Colors.green],
    ["Carrot", "1.50", "lib/images/carrot.png", Colors.orange],
    ["Cauliflower", "3.0", "lib/images/cauliflower.png", Colors.green],
    ["Eggplant", "2.5", "lib/images/eggplant.png", Colors.purple],
    ["Chicken", "12.80", "lib/images/Chicken.png", Colors.brown],
    ["Water", "1.00", "lib/images/Water.png", Colors.blue],
  ];

  //list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;
  
  get shopItems => _shopItems;

  //add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }



  //remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }


  //calculate total price
  String calculateTotal() {
    double totalPrice = 0.0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
    }
}