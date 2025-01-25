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
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ModifyText(
                        text: "Direction",
                        fontWeight: FontWeight.bold,
                        fontSize: w * 0.06,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: ModifyText(
                            text: "Start",
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                  Container(
                    height: h * .07,
                    width: w,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: ClipPath(
                              child: Container(
                                color: Colors.redAccent,
                                child: Center(
                                  child: ModifyText(
                                    text: "Ingredients Required",
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: w * .05,
                                  ),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                "6\nItems",
                                style: TextStyle(
                                    fontSize: w * .04,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ))
                      ],
                    ),
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
