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
          spacing: 15,
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
                  Category(name: name[0], image: image[0]),
                  Category(name: name[1], image: image[1]),
                  Category(name: name[2], image: image[2]),
                  Category(name: name[3], image: image[3]),
                ],
              ),
            ),
            ModifyText(
                text: "For You",
                fontWeight: FontWeight.bold,
                fontSize: w * .055),
            SizedBox(
              height: h * .45,
              child: GridView.builder(
                itemCount: categoryImage.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: h * .01,
                    mainAxisSpacing: w * .021,
                    crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: h * .043,
                            width: w * .08,
                            child: Image.asset(categoryImage[index]),
                          ),
                          ModifyText(
                              text: categories[index],
                              fontWeight: FontWeight.bold,
                              color: Colors.black45),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
