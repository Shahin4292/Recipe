import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe/model/recipe_model.dart';
import 'package:recipe/viewModel/controller/home%20controller.dart';

class IngredientList extends StatelessWidget {
  final Recipes recipes;

  const IngredientList({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 70,
          width: 74,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: NetworkImage(recipes.image.toString()),
                fit: BoxFit.cover),
          ),
        ),
        // SizedBox(
        //   width: 20,
        // ),
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   spacing: 8,
        //   children: [
        //     ModifiedText(
        //       text: property.name,
        //       size: 16,
        //       fontWeight: FontWeight.w500,
        //       color: Colors.black,
        //     ),
        //     ModifiedText(
        //       text:
        //       'Rp ${property.price.toStringAsFixed(0)} / ${property.priceType}',
        //       size: 12,
        //       fontWeight: FontWeight.w400,
        //       color: AppColor.blueShade,
        //     ),
        //     Row(
        //       spacing: 8,
        //       children: [
        //         SvgPicture.asset(
        //           AppAssets.bedroom,
        //           height: 13,
        //           width: 16,
        //           color: AppColor.darkGrey,
        //         ),
        //         ModifiedText(
        //             text: '${property.bedrooms} Bedroom',
        //             size: 12,
        //             fontWeight: FontWeight.w400,
        //             color: AppColor.darkGrey),
        //         SizedBox(
        //           width: 10,
        //         ),
        //         SvgPicture.asset(
        //           AppAssets.bathroom,
        //           height: 13,
        //           width: 16,
        //           color: AppColor.darkGrey,
        //         ),
        //         ModifiedText(
        //           text: '${property.bathrooms} Bathroom',
        //           size: 12,
        //           fontWeight: FontWeight.w400,
        //           color: AppColor.darkGrey,
        //         ),
        //       ],
        //     ),
        //   ],
        // )
      ],
    );
  }
}
