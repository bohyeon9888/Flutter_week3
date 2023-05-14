import 'package:flutter/material.dart';
import 'package:meal_app/screens/meal_detailed_screen.dart';
import './screens/categories_screen.dart';
import './screens/category_meals.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              // ignore: prefer_const_constructors
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              // ignore: prefer_const_constructors
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              // ignore: prefer_const_constructors
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      //home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMeals.routeName: (ctx) => CategoryMeals(),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        //return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
      onUnknownRoute: ((settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      }),
    );
  }
}
