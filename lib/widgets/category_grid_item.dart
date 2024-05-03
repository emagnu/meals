//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../models/category.dart';
//  PARTS
//  PROVIDERS
//  //   ///

class CategoryGridItem extends StatelessWidget {
  final Category category;

  const CategoryGridItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.55),
              category.color.withOpacity(0.09),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
          color: category.color,
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                // fontWeight: FontWeight.bold,
                // fontSize: 20,
              ),
        ),
      ),
    );
  }
}
