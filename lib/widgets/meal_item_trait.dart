//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
//  PROVIDERS
//  //   ///

class MealItemTrait extends StatelessWidget {
  final IconData icon;
  final String label;

  const MealItemTrait({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          size: 17,
          color: Colors.white,
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
