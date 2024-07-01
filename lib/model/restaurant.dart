import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/cart_item.dart';
import 'package:flutter_application_1/model/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    Food(
        category: FoodCategory.african,
        availableAddons: [
          Addon(name: "extra sauce", price: 200),
          Addon(name: "extra foutou", price: 1000),
          Addon(name: "extra viandes", price: 1500),
        ],
        description: "Foutou Bananne",
        imagePath: "assets/african/foutou_bananne.jpeg",
        price: 8000,
        name: "Foutou Bananne"),
    //salads
    Food(
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "extra sauce", price: 200),
          Addon(name: "extra pain", price: 1000),
          Addon(name: "extra viandes", price: 1500),
        ],
        description: "Salades Caesar",
        imagePath: "assets/salads/salade_cesar.jpeg",
        price: 9000,
        name: "Salade Caesar"),
    //burger
    Food(
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "extra sauce", price: 200),
          Addon(name: "extra cheese", price: 1000),
          Addon(name: "extra soda", price: 1500),
        ],
        description: "Burger with cheese",
        imagePath: "assets/burgers/burger_with_cheese.jpeg",
        price: 18000,
        name: "Big Burger"),
    //pizza
    Food(
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "extra pepperoni", price: 200),
          Addon(name: "extra ketchup", price: 1000),
          Addon(name: "extra size", price: 1500),
        ],
        description: "Pizza",
        imagePath: "assets/pizza/pizza_reine.jpeg",
        price: 8000,
        name: "Pizza Reine"),
    //dessert
    Food(
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "extra chocolate", price: 200),
          Addon(name: "extra cake", price: 1000),
        ],
        description: "Dessert Gâteaux",
        imagePath: "assets/desserts/forets_noire.jpeg",
        price: 28000,
        name: "Forets Noire"),
    // drinks
    Food(
        category: FoodCategory.drinks,
        availableAddons: [],
        description: "Coca",
        imagePath: "assets/drinks/coca.jpeg",
        price: 1000,
        name: "Coca"),
    //sides
    Food(
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "extra chocolate", price: 200),
          Addon(name: "extra sugar", price: 1000),
          Addon(name: "extra honey", price: 1500),
        ],
        description: "Crêpes",
        imagePath: "assets/sides/crepes.jpeg",
        price: 8000,
        name: "Crêpes"),
  ];

  List<Food> get menu => _menu;

  final List<CartItem> _cart = [];

  List<CartItem> get cart => _cart;

  // Add to cart operations
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons, quantity: 1));
    }
    notifyListeners();
  }

  // Remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
      notifyListeners();
    }
  }

  // Calculate total price
  double getTotalPrice() {
    double total = 0.0;
    for (var cartItem in _cart) {
      double itemTotal = cartItem.food.price * cartItem.quantity;
      for (var addon in cartItem.selectedAddons) {
        itemTotal += addon.price * cartItem.quantity;
      }
      total += itemTotal;
    }
    return total;
  }
}
