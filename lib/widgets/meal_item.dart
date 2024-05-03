//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
//  Import FILES
import '../models/meal.dart';
import 'meal_item_trait.dart';
//  PARTS
//  PROVIDERS
//  //   ///

class MealItem extends StatelessWidget {
  final Meal meal;
  final void Function(BuildContext context, Meal meal) onSelectMeal;

  const MealItem({
    super.key,
    required this.meal,
    required this.onSelectMeal,
  });

  String get complexityText {
    return meal.complexity.name[0].toUpperCase() +
        meal.complexity.name.substring(1);
  }

  String get affordabilityText {
    return meal.affordability.name[0].toUpperCase() +
        meal.affordability.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.hardEdge, //.antiAlias,
      elevation: 4,
      child: InkWell(
        onTap: () {
          onSelectMeal(context, meal);
        },

        child: Stack(
          children: <Widget>[
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.black54,
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                  child: Column(
                    children: <Widget>[
                      Text(
                        meal.title,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis, //.fade,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // const Icon(Icons.schedule),
                          // const SizedBox(width: 6),
                          // Text('${meal.duration} min'),
                          MealItemTrait(
                            icon: Icons.schedule,
                            label: '${meal.duration} min',
                          ),
                          const SizedBox(width: 12.0),
                          MealItemTrait(
                            icon: Icons.work,
                            label: complexityText,
                          ),
                          const SizedBox(width: 12.0),
                          MealItemTrait(
                            icon: Icons.attach_money,
                            label: affordabilityText,
                          ),
                        ],
                      ),
                    ],
                  ),
                ))
          ],
        ),
        // Text(meal.title),
      ),
    );
  }
}

// Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           const Icon(Icons.schedule),
//                           const SizedBox(width: 6),
//                           Text('${meal.duration} min'),
//                         ],
//                       )
