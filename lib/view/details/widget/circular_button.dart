import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const CircularButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Column(
      spacing: 8,
      children: [
        CircleAvatar(
          radius: w * 0.06,
          backgroundColor: Colors.redAccent,
          child: Center(
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        )
      ],
    );
  }
}
