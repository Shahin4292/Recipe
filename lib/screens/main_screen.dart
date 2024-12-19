import 'package:flutter/material.dart';
import 'package:recipe/components/bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController pageController;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentIndex);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        selectedItem: currentIndex,
        onTap: (index) {
          pageController.animateToPage(index,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut);
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: const [
          Center(
            child: Text("page 1"),
          ),
          Center(
            child: Text("page 2"),
          ),
          Center(
            child: Text("page 3"),
          ),
          Center(
            child: Text("page 4"),
          ),
          Center(
            child: Text("page 5"),
          ),
        ],
      ),
    );
  }
}
