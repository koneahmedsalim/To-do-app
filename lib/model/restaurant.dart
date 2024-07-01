import 'package:flutter/material.dart';
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
        description: "salades cesaer",
        imagePath: "assets/african/foutou_bananne.jpeg",
        price: 9000,
        name: "salade cesear"),
        //burger
        Food(
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "extra sauce", price: 200),
          Addon(name: "extra cheese", price: 1000),
          Addon(name: "extra soda", price: 1500),
        ],
        description: "burger with cheese",
        imagePath: "assets/african/foutou_bananne.jpeg",
        price: 18000,
        name: "big burger"),
        //pizza
        Food(
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "extra peperoni", price: 200),
          Addon(name: "extra ketchop", price: 1000),
          Addon(name: "extra size", price: 1500),
        ],
        description: "pizza ",
        imagePath: "assets/african/foutou bananne.jpeg",
        price: 8000,
        name: "pizza reine"),
        //dessert
        Food(
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "extra chocolat", price: 200),
          Addon(name: "extra cake", price: 1000),
        ],
        description: "deserts gateaux",
        imagePath: "assets/african/foutou_bananne.jpeg",
        price: 28000,
        name: "forets noire"),
    // drinks
    Food(
        category: FoodCategory.drinks,
        availableAddons: [
          
        ],
        description: "coca",
        imagePath: "assets/african/foutou_bananne.jpeg",
        price: 1000,
        name: "coca"),
        //sides
        Food(
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "extra chocolat", price: 200),
          Addon(name: "extra sucre", price: 1000),
          Addon(name: "extra miel", price: 1500),
        ],
        description: "crepes",
        imagePath: "assets/african/foutou_bananne.jpeg",
        price: 8000,
        name: "crepes"),

  ];

  List<Food> get menu => _menu;

  // Ajoutez des méthodes pour gérer le panier ici (ajouter, retirer, calculer le total, etc.)
}
