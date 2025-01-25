import 'package:flutter/material.dart';
import 'package:recipe/utils/modify_text.dart';
import 'package:recipe/view/details/widget/circular_button.dart';

class DetailsScreen extends StatelessWidget {
  final String? imageUrl;
  final String? name;
  final String? time;

  const DetailsScreen({super.key, this.imageUrl, this.name, this.time});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 20,
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: NetworkImage(imageUrl!), fit: BoxFit.cover)),
                ),
                Positioned(
                    top: 15,
                    left: 15,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 20,
                          )),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ModifyText(
                    text: name!,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  Text("$time min"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularButton(
                        icon: Icons.share,
                        label: 'Share',
                      ),
                      CircularButton(
                        icon: Icons.bookmark_border,
                        label: 'Save',
                      ),
                      CircularButton(
                        icon: Icons.monitor_heart_outlined,
                        label: 'Calories',
                      ),
                      CircularButton(
                        icon: Icons.table_chart_outlined,
                        label: 'Unit cart',
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
