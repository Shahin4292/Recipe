import 'package:flutter/material.dart';

import '../components/apps_bar.dart';
import '../utils/image_path.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
            children: [
              AppsBar(),
              SizedBox(
                height: size.height * 0.022,
              ),
              Container(
                height: size.height * 0.22,
                width: size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(ImagePath.explore),fit: BoxFit.cover
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
