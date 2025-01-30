import 'package:get/get.dart';
import 'package:recipe/res/routes/routes_name.dart';

import '../../view/home/home_screen.dart';
import '../../view/main/main_screen.dart';
import '../../view/onBoarding/on_boarding_screen.dart';
import '../components/bottom_nav_bar.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.onBoardingScreen,
          page: () => OnBoardingScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.mainScreen,
          page: () => MainScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.bottomBar,
          page: () => BottomNavBar(
            selectedItem: 0,
            onTap: (int) {},
          ),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
      ];
}
