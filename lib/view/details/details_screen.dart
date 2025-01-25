import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String? imageUrl;

  const DetailsScreen({super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
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
                  onTap: (){
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
      ),
    );
  }
}
