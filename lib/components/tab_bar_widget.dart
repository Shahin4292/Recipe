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
        child: Container(
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
        ));
  }
}