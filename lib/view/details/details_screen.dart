import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String? imageUrl;

  const DetailsScreen({super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Container(
          height: 300,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: NetworkImage(imageUrl!), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
