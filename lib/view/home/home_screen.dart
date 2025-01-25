import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe/utils/modify_text.dart';

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
              SizedBox(
                height: size.height * 0.03,
              ),
              Expanded(
                child: Obx(() {
                  switch (homeController.rxRequestStatus.value) {
                    case Status.LOADING:
                      return const Center(child: CircularProgressIndicator());
                    case Status.ERROR:
                      if (homeController.error.value == 'No internet') {
                        return InterNetExceptionWidget(
                          onPress: () {
                            homeController.refreshApi();
                          },
                        );
                      } else {
                        return GeneralExceptionWidget(onPress: () {
                          homeController.refreshApi();
                        });
                      }
                    case Status.COMPLETE:
                      return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DetailsScreen(
                                                  imageUrl: homeController
                                                      .userList
                                                      .value
                                                      .recipes![index]
                                                      .image
                                                      .toString(),
                                                )));
                                  },
                                  child: Container(
                                    height: 250,
                                    width: 250,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(homeController
                                              .userList
                                              .value
                                              .recipes![index]
                                              .image
                                              .toString())),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            bottom: 10,
                                            right: 10,
                                            child: Icon(
                                                Icons.favorite_border_rounded))
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  homeController
                                      .userList.value.recipes![index].mealType
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  homeController
                                      .userList.value.recipes![index].name
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => Container(),
                        itemCount:
                            homeController.userList.value.recipes!.length,
                      );
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
