import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String title;

  const TabItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey)),
      child: Center(
          child: Text(
        title,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      )),
    );
  }
}
