import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Positioned(
                top: 0,
                child: Container(
                  height: size.height * 0.79,
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(image: AssetImage("")),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
