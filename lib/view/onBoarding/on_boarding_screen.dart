import 'package:flutter/material.dart';

import '../../res/assets/image_path.dart';
import '../main/main_screen.dart';

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
              top: 30,
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
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Text(
                      "Check Out the App and Start Cooking delicious meals!",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: size.height * 0.032,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            fixedSize:
                                Size(size.width * 0.8, size.height * 0.055)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainScreen()));
                        },
                        child: const Text(
                          "Get Started",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ))
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
