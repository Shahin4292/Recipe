import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedItem;
  final Function(int) onTap;

  const BottomNavBar(
      {super.key, required this.selectedItem, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      color: Colors.grey[100],
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.015, vertical: size.height * 0.01),
        child: GNav(
          gap: 10,
          tabBorderRadius: 100,
          backgroundColor: Colors.grey[100]!,
          activeColor: Colors.white,
          color: Colors.blue[600],
          tabBackgroundGradient: LinearGradient(
              colors: [Colors.blue[400]!, Colors.blueAccent.shade700],
              begin: Alignment.topLeft,
              end: Alignment.topRight),
          iconSize: 30,
          textSize: 18,
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.01, horizontal: size.width * 0.01),
          tabs: [
            GButton(
              icon: CupertinoIcons.home,
              iconColor: selectedItem == 0 ? Colors.white : Colors.blue,
              text: 'Home',
            ),
            GButton(
              icon: Icons.category,
              iconColor: selectedItem == 1 ? Colors.white : Colors.blue,
              text: 'Categories',
            ),
            GButton(
              icon: CupertinoIcons.search,
              iconColor: selectedItem == 2 ? Colors.white : Colors.blue,
              text: 'Search',
            ),
            GButton(
              icon: CupertinoIcons.bookmark_solid,
              iconColor: selectedItem == 3 ? Colors.white : Colors.blue,
              text: 'Saved',
            ),
            GButton(
              icon: CupertinoIcons.shopping_cart,
              iconColor: selectedItem == 4 ? Colors.white : Colors.blue,
              text: 'Shopping',
            ),
          ],
          onTabChange: onTap,
          selectedIndex: selectedItem,
        ),
      ),
    );
  }
}
