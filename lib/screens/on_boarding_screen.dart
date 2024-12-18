import 'package:flutter/material.dart';
import 'package:recipe/utils/image_path.dart';

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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          ImagePath.onBoarding,
                        ),
                        fit: BoxFit.cover),
                  ),
                )),
            Positioned(
              bottom: 0,
              child: Container(
                height: size.height * 0.243,
                width: size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Let's Cook Good Food",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: size.width * 0.06),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
