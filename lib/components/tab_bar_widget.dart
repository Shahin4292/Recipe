import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../widget/tab_item.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: size.height * .05,
              child: TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.white,
                dividerColor: Colors.white,
                indicator: BoxDecoration(
                  gradient: GradientColor.gradientColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                labelPadding:
                    EdgeInsets.symmetric(horizontal: size.width * 0.012),
                tabs: [
                  TabItem(
                    title: 'Breakfast',
                  ),
                  TabItem(
                    title: 'Lunch',
                  ),
                  TabItem(
                    title: 'Dinner',
                  ),
                  TabItem(
                    title: 'Quick',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * .020,
              child: TabBarView(
                children: [],
              ),
            ),
          ],
        ));
  }
}

class HomeTabBarView extends StatelessWidget {
  final String recipe;

  const HomeTabBarView({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * .28,
      child: ListView.separated(
          itemBuilder: (context, index) {},
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 15,
            );
          },
          itemCount: 3),
    );
  }
}
