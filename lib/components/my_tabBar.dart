import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/food.dart';

class MyTabbar extends StatelessWidget {
  final TabController tabController;

  const MyTabbar({Key? key, required this.tabController}) : super(key: key);

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: _buildCategoryTabs(),
    );
  }
}
