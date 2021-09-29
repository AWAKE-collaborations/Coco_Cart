import 'package:flutter/material.dart';

class cartItems {
  Image img;
  String itemName;
  double price;
  int quantity;
  double itemTotalAmt;

  cartItems(
      this.img, this.itemName, this.price, this.quantity, this.itemTotalAmt);
}
