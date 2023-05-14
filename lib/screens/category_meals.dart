import 'package:flutter/material.dart';
import 'package:meal_app/widgets/meal_item.dart';

import '../dummy_data.dart';

class CategoryMeals extends StatelessWidget {
  static const routeName = '/category-meals';
  //final String categoryID;
  //final String categoryTitle;

  //CategoryMeals(this.categoryID, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final categoryTitle = routeArgs['title'];
    final categoryID = routeArgs['id'];
    final CategoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryID);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              id: CategoryMeals[index].id,
              title: CategoryMeals[index].title,
              imageUrl: CategoryMeals[index].imageUrl,
              affordability: CategoryMeals[index].affordability,
              complexity: CategoryMeals[index].complexity,
              duration: CategoryMeals[index].duration);
        },
        itemCount: CategoryMeals.length,
      ),
    );
  }
}
