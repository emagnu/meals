//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
//  Import FILES
import '../models/meal.dart';
//  PARTS
//  PROVIDERS
//  //   ///

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.hardEdge, //.antiAlias,
      elevation: 4,
      child: InkWell(
        onTap: () {},
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
                          const Icon(Icons.schedule),
                          const SizedBox(width: 6),
                          Text('${meal.duration} min'),
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
