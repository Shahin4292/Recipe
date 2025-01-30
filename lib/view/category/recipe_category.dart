import 'package:flutter/material.dart';
import 'package:recipe/res/components/category_list.dart';
import 'package:recipe/utils/modify_text.dart';
import 'package:recipe/view/category/widget/category.dart';

class RecipeCategory extends StatelessWidget {
  const RecipeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.1),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * .04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 20,
          children: [
            ModifyText(
              text: "For You",
              fontWeight: FontWeight.bold,
              fontSize: w * .06,
            ),
            SizedBox(
              height: h * .106,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Category(
                    name: name[0],
                    image: image[0],
                  ),
                  Category(
                    name: name[1],
                    image: image[1],
                  ),
                  Category(
                    name: name[2],
                    image: image[2],
                  ),
                  Category(
                    name: name[3],
                    image: image[3],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
