import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe/model/recipe_model.dart';
import 'package:recipe/viewModel/controller/home%20controller.dart';

class IngredientList extends StatelessWidget {
  final Recipes recipes;

  const IngredientList({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 100,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.2),
                blurRadius: 5,
                spreadRadius: 2,
                offset: Offset(0, 3),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            spacing: 10,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(recipes.image.toString()),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 4,
                children: [
                  Text(
                    recipes.mealType.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        overflow: TextOverflow.ellipsis),
                  ),
                  Row(
                    spacing: 3,
                    children: [
                      Text(
                        recipes.difficulty.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.green,
                      ),
                      Text(
                        recipes.rating.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              Icon(
                Icons.add_circle_outline,
                size: 30,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
