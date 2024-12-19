import 'package:flutter/cupertino.dart';

class AppsBar extends StatelessWidget {
  const AppsBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        Text(
          "What are you\ncooking today?",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size.width * 0.07,
              height: 1),
        ),
      ],
    );
  }
}
