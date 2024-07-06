import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/cart_item.dart';
import 'package:flutter_application_1/model/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // AFRCIAN
    Food(
        category: FoodCategory.african,
        availableAddons: [
          Addon(name: "extra sauce", price: 200),
          Addon(name: "extra foutou", price: 1000),
          Addon(name: "extra viandes", price: 1500),
        ],
        description: "Foutou Bananne",
        imagePath: "assets/african/fouofu.jpg",
        price: 8000,
        name: "Foutou Bananne"),
    Food(
        category: FoodCategory.african,
        availableAddons: [
          Addon(name: "extra sauce", price: 200),
          Addon(name: "extra foutou", price: 1000),
          Addon(name: "extra viandes", price: 1500),
        ],
        description: "Foutou Bananne",
        imagePath: "assets/african/fouofu.jpg",
        price: 8000,
        name: "Foutou Bananne"),
    Food(
        category: FoodCategory.african,
        availableAddons: [
          Addon(name: "extra sauce", price: 200),
          Addon(name: "extra foutou", price: 1000),
          Addon(name: "extra viandes", price: 1500),
        ],
        description: "Foutou Bananne",
        imagePath: "assets/african/fouofu.jpg",
        price: 8000,
        name: "Foutou Bananne"),
    Food(
        category: FoodCategory.african,
        availableAddons: [
          Addon(name: "extra sauce", price: 200),
          Addon(name: "extra foutou", price: 1000),
          Addon(name: "extra viandes", price: 1500),
        ],
        description: "Foutou Bananne",
        imagePath: "assets/african/fouofu.jpg",
        price: 8000,
        name: "Foutou Bananne"),
    Food(
        category: FoodCategory.african,
        availableAddons: [
          Addon(name: "extra sauce", price: 200),
          Addon(name: "extra foutou", price: 1000),
          Addon(name: "extra viandes", price: 1500),
        ],
        description: "Foutou Bananne",
        imagePath: "assets/african/fouofu.jpg",
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
        imagePath: "assets/african/fouofu.jpg",
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
        imagePath: "assets/burger/boom beach burger.jpg",
        price: 18000,
        name: "Big Burger"),
    Food(
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "extra sauce", price: 200),
          Addon(name: "extra cheese", price: 1000),
          Addon(name: "extra soda", price: 1500),
        ],
        description: "Burger with chum from bikini bottom",
        imagePath: "assets/burger/chum bucket paty.jpg",
        price: 18000,
        name: "chum burger"),
    Food(
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "extra sauce", price: 200),
          Addon(name: "extra cheese", price: 1000),
          Addon(name: "extra soda", price: 1500),
        ],
        description: "Burger crab meat",
        imagePath: "assets/burger/le pate de crab.jpg",
        price: 18000,
        name: "patée de crabe"),
    Food(
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "extra sauce", price: 200),
          Addon(name: "extra cheese", price: 1000),
          Addon(name: "extra soda", price: 1500),
        ],
        description: "Burger with cheese",
        imagePath: "assets/burger/boom beach burger.jpg",
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
        description: "Pizza au champignon de sepe",
        imagePath: "assets/pizza/champignon sepe.jpg",
        price: 8000,
        name: "Pizza sepe"),
    Food(
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "extra pepperoni", price: 200),
          Addon(name: "extra ketchup", price: 1000),
          Addon(name: "extra size", price: 1500),
        ],
        description: "Pizza au jambon",
        imagePath: "assets/pizza/jambon.jpg",
        price: 8000,
        name: "Pizza jambon"),
    Food(
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "extra pepperoni", price: 200),
          Addon(name: "extra ketchup", price: 1000),
          Addon(name: "extra size", price: 1500),
        ],
        description: "Pizza",
        imagePath: "assets/pizza/margaritta.jpg",
        price: 8000,
        name: "Pizza margaritta"),
    Food(
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "extra pepperoni", price: 200),
          Addon(name: "extra ketchup", price: 1000),
          Addon(name: "extra size", price: 1500),
        ],
        description: "Pizza",
        imagePath: "assets/pizza/pizza mixte.jpg",
        price: 8000,
        name: "Pizza mixte"),
    //dessert
    Food(
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "extra chocolate", price: 200),
          Addon(name: "extra cake", price: 1000),
        ],
        description: "gateaux au xhocolat noir",
        imagePath: "assets/dessert/chocolat cake coulant.jpg",
        price: 28000,
        name: "cascade Noire"),
    Food(
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "extra chocolate", price: 200),
          Addon(name: "extra cake", price: 1000),
        ],
        description: "cup cakes a la francaise",
        imagePath: "assets/dessert/cup cake francais.jpg",
        price: 28000,
        name: "cup cake"),
    Food(
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "extra chocolate", price: 200),
          Addon(name: "extra cake", price: 1000),
        ],
        description: "gateaux a la fraise",
        imagePath: "assets/dessert/gateau fraise.jpg",
        price: 28000,
        name: "gateau a la fraise"),
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
    Food(
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "extra chocolate", price: 200),
          Addon(name: "extra cake", price: 1000),
        ],
        description: "gateaux au chocolat",
        imagePath: "assets/dessert/veloute d'orange.jpg",
        price: 28000,
        name: "veloute d'orange sur son lit de chocolat"),
    // drinks
    Food(
        category: FoodCategory.drinks,
        availableAddons: [],
        description: "boisson alcooliser aromatiser a la peche",
        imagePath: "assets/drinks/3 pecher.jpg",
        price: 1000,
        name: "3 pechés"),
    Food(
        category: FoodCategory.drinks,
        availableAddons: [],
        description: "boisson rouge ",
        imagePath: "assets/drinks/lune sanglante.jpg",
        price: 1000,
        name: "lune sanglante"),
    Food(
        category: FoodCategory.drinks,
        availableAddons: [],
        description: "vin",
        imagePath: "assets/drinks/ruinard.jpg",
        price: 1000,
        name: "ruinard"),
    Food(
        category: FoodCategory.drinks,
        availableAddons: [],
        description: "coktail rappelant les couleur d'hawai",
        imagePath: "assets/drinks/tropical coktail.jpg",
        price: 1000,
        name: "cocktail tropicale"),
    Food(
        category: FoodCategory.drinks,
        availableAddons: [],
        description: "Coca",
        imagePath: "assets/drinks/coca.png",
        price: 1000,
        name: "Coca"),
    Food(
        category: FoodCategory.drinks,
        availableAddons: [],
        description: "liqueur",
        imagePath: "assets/drinks/whisky.jpg",
        price: 1000,
        name: "whisky"),
  ];

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

//user cart
  final List<CartItem> _cart = [];

  // Add to cart operations
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
          CartItem(food: food, selectedAddons: selectedAddons, quantity: 1));
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
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price * cartItem.quantity;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total Number in cart of itzms
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

   String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // Format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("______________");
    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("Extras: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("_______________");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  // Format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // Format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
