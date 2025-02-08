import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/response/status.dart';
import '../../../res/components/general_exception.dart';
import '../../../res/components/internet_exceptions_widget.dart';
import '../../../viewModel/controller/home controller.dart';
import '../../details/details_screen.dart';

class ItemShow extends StatelessWidget {
  ItemShow({super.key});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
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
                                builder: (context) =>
                                    DetailsScreen(
                                      time: homeController
                                          .userList
                                          .value
                                          .recipes![index]
                                          .cookTimeMinutes
                                          .toString(),
                                      name: homeController
                                          .userList
                                          .value
                                          .recipes![index]
                                          .name
                                          .toString(),
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
    });
  }
}
