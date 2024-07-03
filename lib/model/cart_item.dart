import 'package:flutter_application_1/model/food.dart';

class CartItem {
  Food food;
  List<Addon> selectedAddons;
  int quantity;

  CartItem(
      {required this.food, this.quantity = 1, required this.selectedAddons});

  double get totalPrice {
    double addonsPrice =
        selectedAddons.fold(0, (sum, Addon) => sum + Addon.price);
    return (food.price + addonsPrice) * quantity;
  }
}
