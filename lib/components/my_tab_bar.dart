import 'package:flutter/material.dart';
import 'package:food_delivery_application/models/food.dart';

class MyTabBar extends StatelessWidget {

  final TabController tabController;

  MyTabBar({
    super.key,
    required this.tabController
  });


  final Map<FoodCategory, String> categoryNames = {
    FoodCategory.burgers: "Burgers",
    FoodCategory.sandwich: "Sandwich",
    FoodCategory.pizza: "Pizza",
    FoodCategory.northIndian: "North Indian",
    FoodCategory.southIndian: "South Indian",
    FoodCategory.gujarati: "Gujarati",
  };

  List<Tab> _buildCategoryTabs(){
    return FoodCategory.values.map((category){
      return Tab(
        text: categoryNames[category],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: _buildCategoryTabs(),
      isScrollable: true,
    );
  }
}
