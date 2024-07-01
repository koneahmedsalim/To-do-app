import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/My_descriptionBox.dart';
import 'package:flutter_application_1/components/My_drawers.dart';
import 'package:flutter_application_1/components/My_food_tile.dart';
import 'package:flutter_application_1/components/My_locations.dart';
import 'package:flutter_application_1/components/My_silver_AppBar.dart';
import 'package:flutter_application_1/model/food.dart';
import 'package:flutter_application_1/model/restaurant.dart';
import 'package:flutter_application_1/pages/food_details.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  final String? scannedData;

  const HomePage({super.key, this.scannedData});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Retourne une liste de plats filtrés par catégorie
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // Retourne une liste de widgets pour les plats dans une catégorie donnée
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      // Filtrer le menu par catégorie
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          // Prendre le plat individuellement
          final food = categoryMenu[index];
          // Retourner les tuiles de nourriture
          return MyFoodTile(
            food: food,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FoodDetails(food: food)),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawers(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppbar(
            title: Text(widget.scannedData ?? "Home"),
            leading: Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(indent: 25, endIndent: 25),
                MyLocations(),
                MyDescriptionbox(),
              ],
            ),
            tabController: _tabController,
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
          ),
        ),
      ),
    );
  }
}
