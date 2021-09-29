import 'package:flutter/material.dart';

class cocoItem {
  Image img;
  String item_name;
  double price;
  int quantity;

  cocoItem(this.img, this.item_name, this.price, this.quantity);
}

List items = <cocoItem>[
  cocoItem(Image.asset("assets/images/img_1.png"), "Coconut", 20.00, 0),
  cocoItem(Image.asset("assets/images/img_2.png"), "Copra", 20.00, 0),
  cocoItem(Image.asset("assets/images/img_3.png"), "Tender Coconut", 20.00, 0),
  cocoItem(Image.asset("assets/images/img_4.png"), "Grated Coconut", 20.00, 0),
];
