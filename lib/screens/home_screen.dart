import 'package:flutter/material.dart';
import 'package:recipe/widget/modify_text.dart';

import '../components/apps_bar.dart';
import '../components/tab_bar_widget.dart';
import '../components/text_field_widget.dart';
import '../utils/image_path.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
            children: [
              AppsBar(),
              SizedBox(
                height: size.height * 0.015,
              ),
              TextFieldWidget(),
              SizedBox(
                height: size.height * 0.022,
              ),
              Container(
                height: size.height * 0.22,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(ImagePath.explore), fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ModifyText(
                    text: "Categories",
                    fontSize: size.width * 0.045,
                    fontWeight: FontWeight.bold,
                  ),
                  ModifyText(
                    text: "see all",
                    fontSize: size.width * 0.030,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              TabBarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
