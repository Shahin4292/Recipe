import 'package:flutter/material.dart';

import '../../utils/tab_item.dart';
import '../../view/home/widget/item_show.dart';
import '../color/app_color.dart';


class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return DefaultTabController(
        length: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(height: 20,),
            Container(
              height: size.height * .4,
              child: TabBarView(
                children: [
                  ItemShow(),
                  ItemShow(),
                  ItemShow(),
                  ItemShow(),
                ],
              ),
            ),
          ],
        ));
  }
}