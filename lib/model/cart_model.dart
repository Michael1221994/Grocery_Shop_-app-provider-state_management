import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items on sale
  final List _shopItems = const [
    // [itemName, itemPrice, imagePath, color]
    ["Avocado", "2.5", "lib/images/avocado.png", Colors.green],
    ["Banana", "1.5", "lib/images/Banana.png", Colors.yellow],
    ["Broccoli", "2.0", "lib/images/broccoli.png", Colors.green],
    ["Carrot", "1.50", "lib/images/carrot.png", Colors.orange],
    ["Cauliflower", "3.0", "lib/images/cauliflower.png", Colors.green],
    ["Eggplant", "2.5", "lib/images/eggplant.png", Colors.purple],
    ["Chicken", "12.80", "lib/images/Chicken.png", Colors.brown],
    ["Water", "1.00", "lib/images/Water.png", Colors.blue],
  ];

  get shopItems => _shopItems;
}