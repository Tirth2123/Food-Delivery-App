import 'package:flutter/material.dart';

import '../models/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const MyFoodTile({super.key, required this.food, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Card(
            margin: const EdgeInsets.all(10),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(food.name),
                        Text("₹${food.price}",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(food.description,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.inversePrimary
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(food.imagePath, height: 120, width: 120),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
