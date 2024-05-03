//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../../models/meal.dart';
import '../../widgets/meal_item.dart';
//  PARTS
//  PROVIDERS
//  //   ///

class MealsScreen extends StatelessWidget {
  final String title;
  final List<Meal> meals;

  const MealsScreen({super.key, required this.title, required this.meals});

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Sorry,\nno meals for this seclection.',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Try later, submit your own ones\nor select a different category!',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ],
      ),
    );

    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          // return Text(meals[index].title);
          return MealItem(meal: meals[index]);
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
