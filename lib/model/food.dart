
class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food({
    required this.category,
    required this.availableAddons,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.name,
  });
}

//food categories

enum FoodCategory { african, burgers, salads, sides, desserts, drinks, pizza }
//food addons

class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
