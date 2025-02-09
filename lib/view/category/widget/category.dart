import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:recipe/utils/modify_text.dart';
import 'package:recipe/view/all_recipe/all_recipe.dart';

class Category extends StatelessWidget {
  final String name, image;

  const Category({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: h * .105,
      width: w * .2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: h * .07,
            width: w * .15,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                )),
          ),
          Center(
            child: ModifyText(
              text: name,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          )
        ],
      ),
    );
  }
}
