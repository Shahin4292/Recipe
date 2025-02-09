import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe/utils/modify_text.dart';

import '../../data/response/status.dart';
import '../../res/components/general_exception.dart';
import '../../res/components/internet_exceptions_widget.dart';
import '../../viewModel/controller/home controller.dart';

class AllRecipe extends StatelessWidget {
  final String recipe;

  AllRecipe({super.key, required this.recipe});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
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
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                  itemCount: homeController.userList.value.recipes!.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 40,
                      childAspectRatio: .6 / 1),
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: NetworkImage(homeController
                                                .userList
                                                .value
                                                .recipes![index]
                                                .image
                                                .toString()),
                                            fit: BoxFit.cover)),
                                  ),
                                ],
                              )),
                          Expanded(
                            flex: 1,
                            child: ModifyText(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                text: homeController
                                    .userList.value.recipes![index].name
                                    .toString()),
                          )
                        ],
                      ),
                    );
                  }),
            );
        }
      }),
    );
  }
}
