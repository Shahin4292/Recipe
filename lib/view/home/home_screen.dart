import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe/utils/modify_text.dart';
import 'package:recipe/view/home/widget/item_show.dart';

import '../../data/response/status.dart';
import '../../res/assets/image_path.dart';
import '../../res/components/apps_bar.dart';
import '../../res/components/general_exception.dart';
import '../../res/components/internet_exceptions_widget.dart';
import '../../res/components/tab_bar_widget.dart';
import '../../res/components/text_field_widget.dart';
import '../../viewModel/controller/home controller.dart';
import '../details/details_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeController homeController = Get.put(HomeController());

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
              // SizedBox(
              //   height: size.height * 0.03,
              // ),
              // ItemShow()
            ],
          ),
        ),
      ),
    );
  }
}
